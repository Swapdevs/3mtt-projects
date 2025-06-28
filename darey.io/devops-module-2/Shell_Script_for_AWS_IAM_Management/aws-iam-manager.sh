#!/bin/bash

# AWS IAM Manager Script for CloudOps Solutions
# This script automates the creation of IAM users, groups, and permissions

# Define IAM User Names Array
IAM_USER_NAMES=("alice" "bob" "carol" "dave" "eve")

# Function to create IAM users
create_iam_users() {
    echo "Starting IAM user creation process..."
    echo "-------------------------------------"

    for USER in "${IAM_USER_NAMES[@]}"; do
        echo "Creating IAM user: $USER"
        aws iam create-user --user-name "$USER" >/dev/null 2>&1

        if [ $? -eq 0 ]; then
            echo "Success: User $USER created."
        else
            echo "Warning: Failed to create user $USER (may already exist)."
        fi
    done

    echo "------------------------------------"
    echo "IAM user creation process completed."
    echo ""
}

# Function to create admin group and attach policy
create_admin_group() {
    echo "Creating admin group and attaching policy..."
    echo "--------------------------------------------"

    aws iam get-group --group-name "admin" >/dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "Admin group does not exist. Creating..."
        aws iam create-group --group-name "admin" >/dev/null 2>&1
        if [ $? -eq 0 ]; then
            echo "Success: 'admin' group created."
        else
            echo "Error: Failed to create 'admin' group."
        fi
    else
        echo "'admin' group already exists."
    fi

    echo "Attaching AdministratorAccess policy..."
    aws iam attach-group-policy --group-name "admin" \
        --policy-arn "arn:aws:iam::aws:policy/AdministratorAccess" >/dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "Success: AdministratorAccess policy attached."
    else
        echo "Error: Failed to attach AdministratorAccess policy."
    fi

    echo "----------------------------------"
    echo ""
}

# Function to add users to admin group
add_users_to_admin_group() {
    echo "Adding users to admin group..."
    echo "------------------------------"

    for USER in "${IAM_USER_NAMES[@]}"; do
        echo "Adding $USER to admin group..."
        aws iam add-user-to-group --user-name "$USER" --group-name "admin" >/dev/null 2>&1

        if [ $? -eq 0 ]; then
            echo "Success: $USER added to admin group."
        else
            echo "Error: Failed to add $USER to admin group."
        fi
    done

    echo "----------------------------------------"
    echo "User group assignment process completed."
    echo ""
}

# Main execution function
main() {
    echo "=================================="
    echo " AWS IAM Management Script"
    echo "=================================="
    echo ""

    # Verify AWS CLI is installed and configured
    if ! command -v aws &> /dev/null; then
        echo "Error: AWS CLI is not installed. Please install and configure it first."
        exit 1
    fi

    # Execute the functions
    create_iam_users
    create_admin_group
    add_users_to_admin_group

    echo "=================================="
    echo " AWS IAM Management Completed"
    echo "=================================="
}

# Execute main function
main

exit 0


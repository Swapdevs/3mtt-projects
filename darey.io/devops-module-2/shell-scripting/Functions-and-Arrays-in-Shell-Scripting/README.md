# Mini Project – Working with Functions in Shell Scripting.

This mini-project focuses on writing **modular and maintainable shell scripts** by using **functions**. The goal is to automate EC2 and S3 setup for a client of **DataWise Solutions**, while ensuring the script is well-organized and robust.

Key concepts implemented:

1. **Encapsulate logic in functions** to improve readability.
2. **Check script arguments** to guide proper usage.
3. **Validate AWS CLI installation** before executing AWS-related commands.
4. **Verify AWS profile environment variable** for authentication.

Each block of logic is implemented as a separate function and invoked in a clean, readable sequence. This structure reflects **real-world scripting practices**.

---

### **Final Refactored Script**

```bash
#!/bin/bash

# Environment variable
ENVIRONMENT=$1

# Function to check if script has an argument
check_num_of_args() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <environment>"
        exit 1
    fi
}

# Function to activate infrastructure environment
activate_infra_environment() {
    if [ "$ENVIRONMENT" == "local" ]; then
        echo "Running script for Local Environment..."
    elif [ "$ENVIRONMENT" == "testing" ]; then
        echo "Running script for Testing Environment..."
    elif [ "$ENVIRONMENT" == "production" ]; then
        echo "Running script for Production Environment..."
    else
        echo "Invalid environment specified. Please use 'local', 'testing', or 'production'."
        exit 2
    fi
}

# Function to check if AWS CLI is installed
check_aws_cli() {
    if ! command -v aws &> /dev/null; then
        echo "AWS CLI is not installed. Please install it before proceeding."
        return 1
    fi
}

# Function to check if AWS profile is set
check_aws_profile() {
    if [ -z "$AWS_PROFILE" ]; then
        echo "AWS profile environment variable is not set."
        return 1
    fi
}

# === Execute all functions ===
check_num_of_args "$@"
activate_infra_environment
check_aws_cli
check_aws_profile
```

---

###  Notes:

* `"$@"` passes all arguments to `check_num_of_args` for accurate count.
* Each function checks a specific requirement and prints clear feedback.
* You can now expand this script by adding EC2/S3 provisioning logic as separate functions.


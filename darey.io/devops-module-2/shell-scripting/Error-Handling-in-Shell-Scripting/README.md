# Error Handling in Shell Scripting (Mini Project)
Error handling in shell scripting is essential to improve script reliability and user experience by anticipating and managing issues such as invalid input, system errors, or unavailable resources. Key strategies include:

* Identifying potential errors (e.g., in user input, file operations, AWS commands)

* Using conditional logic and checking command exit statuses `($?)`

* Providing informative error messages to guide users

## In an AWS context, an example is handling S3 bucket creation errors. A script should:

Check if a bucket already exists using `aws s3api` head-bucket

Skip creation if the bucket exists and display a message

Attempt to create the bucket only if it does not exist, and verify success with `$?`


# Function to create S3 buckets for different departments
`create_s3_buckets() {"\n    company=\"datawise\"\n    departments=(\"Marketing\" \"Sales\" \"HR\" \"Operations\" \"Media\")\n    \n    for department in \"${departments[@]"}"; do
        bucket_name="${company}-${department}-Data-Bucket"`
        
        # Check if the bucket already exists
        if aws s3api head-bucket --bucket "$bucket_name" &>/dev/null; then
            echo "S3 bucket '$bucket_name' already exists."
        else
            # Create S3 bucket using AWS CLI
            aws s3api create-bucket --bucket "$bucket_name" --region your-region
            if [ $? -eq 0 ]; then
                echo "S3 bucket '$bucket_name' created successfully."
            else
                echo "Failed to create S3 bucket '$bucket_name'."
            fi
        fi
    done
}


This practice prevents redundant resource creation (e.g., multiple EC2 instances or failed S3 bucket attempts) and ensures the script behaves as expected across multiple runs. The instructor emphasises actual implementation, control flow, proper error checks, and testing in a real AWS environment.

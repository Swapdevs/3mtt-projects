# What is Amazon S3?
Amazon S3, or Simple Storage Service, is like a big digital warehouse where you can store all kinds of data. It's part of Amazon Web Services (AWS), which is a collection of cloud computing services.
## S3 Benefits
* Amazon S3 offers a range of benefits that make it a top choice for storing and managing data in the cloud.
  * Firstly, S3 provides exceptional durability and reliability. Your data is stored across multiple servers and data centers, ensuring that even if one server fails, your files remain safe and accessible.
  * Secondly, S3 offers scalability, meaning you can easily increase or decrease your storage capacity as needed. Whether you're storing a few gigabytes or petabytes of data, S3 can handle it without any hassle.
  * Another key benefit of S3 is its accessibility. You can access your data from anywhere in the world using the internet, making it convenient for remote teams or distributed applications.
  * Security is also a top priority with S3. You have full control over who can access your data and can encrypt your files to ensure they remain confidential and secure.
  * Additionally, S3 is cost-effective. You only pay for the storage you use, with no upfront fees or long-term contracts, making it a budget-friendly option for businesses of all sizes.
## What is S3 Versioning?
* Imagine you're working on a big project and you accidentally delete an important file. But wait, with S3 versioning, it's like having a magic undo button.
* Here's how it works: Normally, when you delete a file in S3, it's gone for good. But with versioning turned on, S3 keeps a copy of every version of your file, even if you delete it or overwrite it. So if you make a mistake, you can easily go back to a previous version and restore it, just like rewinding time.
* This feature is super handy for protecting your data from accidents or malicious actions. It's like having a safety net for your files, ensuring that even if something goes wrong, you can always recover your precious data. Plus, it's easy to turn on and manage, giving you peace of mind knowing that your files are always safe and sound in Amazon S3.
* Breaking it down into five parts so that it will help us understand it more clearly.
* Firstly, we will create a new bucket in Amazon S3 to store our files. Following that, we will upload a file into this newly created bucket. Subsequently, we will enable
versioning for the bucket, allowing us to retain multiple versions of our uploaded files for tracking changes over time. Next, we will configure the permissions for
the bucket to enable public access, ensuring that the files can be accessed by anyone with the appropriate link. Finally, we will implement lifecycle policies to
automate the management of our files.

* First, navigate to the search bar on the AWS console.
  * Search for "S3".
  ![AWS console](img/)
* After clicking on S3 in the search results, you'll be directed to the S3 page.
  * From there, locate and click on the "Create bucket" button.
    ![Create bucket]()
* Let's proceed with creating a new bucket. Please provide a unique name for the bucket, ensuring it's distinct from any existing bucket names.
  * Select "ACL Disabled" for object ownership.
  * Ensure to check the "Block all public access" option.
  * Additionally, leave Bucket Versioning disabled.
  * Proceed with the default settings.
  * Once done, click on the "Create bucket" button to finalise the creation process.
    !

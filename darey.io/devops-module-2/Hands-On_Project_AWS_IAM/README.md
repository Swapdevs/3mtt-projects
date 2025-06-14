# Introduction to Cloud Computing - Security & Identity Management (IAM)
## Creating IAM Users

An IAM user is a unique identity within an AWS account that represents a person or service, granting specific permissions to access and interact with AWS
resources under controlled and customizable security policies.

Imagine that you have a big, secure building **(AWS account)** that you own and control. When you first get the keys to this building, you're given a master key
**(root user)** that can open every door, access every floor, and make changes to the building's structure itself.

This master key is powerful, allowing you to do anything from adding new rooms (services) to changing the locks **(security settings)**. However, because this key
can do so much, it's also very risky to use it for daily tasks, like if you lost it, someone could do anything they want with your building.

Now, imagine you have specific tasks that need to be done in the building, like cleaning, maintenance, or security checks. You wouldn't give out your master key
to every person who needs to do those jobs. Instead, you create specific keys **(IAM users)** that can only open certain doors or access certain floors. These keys
are less powerful but much safer to use for everyday tasks. They ensure that the people holding them can only access the parts of the building they need to do
their jobs and nothing more.

Let's set up IAM users for a backend developer, John, and a data analyst, Mary, by first determining their specific access needs.

As a backend developer, John requires access to servers **(EC2)** to run his code, necessitating an IAM user with policies granting EC2 access.

As a data analyst, Mary needs access to data storage **(AWS S3 service),** so her IAM user should have policies enabling S3 access.

Considering **Zappy e-Bank's** plan to expand its team with 10 more developers and 5 additional data analysts in the coming months, it's inefficient to create similar policies for each new member individually. 
A more streamlined approach involves:

1. Crafting a single policy tailored to each role's access requirements.
2. Associating this policy with a group specifically designed for that role.
3. Adding all engineers or analysts to their respective groups simplifies the management of permissions and ensures consistent access across the team.

## Create policy for the Development team

1. In the IAM console, click on policies
   ![IAM console](./img/IAM-console.png)
2. Click on Create Policy
   ![Create Policy](./img/create-policy.png)
3. In the select a service section, search for EC2
   ![select a service section](./img/search-ec2.png)
4. For simplicity's sake, select the "All EC2 actions" checkbox
   ![All EC2 actions](./img/ec2-actions.png)
5. Also, make sure to select "All" in the Resources section.
   ![all-resources.png](./img/all-resources.png)
6. Click Next.
7. 

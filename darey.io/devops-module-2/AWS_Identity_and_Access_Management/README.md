# AWS Identity and Access Management Mini project.
### Best Practices:

- Give only the permissions needed: Don't give more access than necessary.
- Use roles instead of users: Roles are safer and can be used when needed.
- Review roles regularly: Remove unused roles to keep things tidy and secure.
- Add extra security with MFA: Use Multi-Factor Authentication for extra protection.
- Use ready-made policies: They're safer and easier to use.
- Keep policies simple: Make separate policies for different tasks.
- Keep track of changes: Keep a record of who changes what.
- Test policies before using them: Make sure they work the way you want them to before applying them to real stuff.
- Use descriptive names: Choose clear and descriptive names for IAM groups to facilitate understanding and management.
- Enforce strong password policies: Encourage users to create strong passwords and implement expiration and complexity requirements.

### The practical part:

- A growth marketing consultancy company called GatoGrowFast.com wants to give some access to their employee Eric, Jack and Ade to the AWS resources. Let's see how it is being set up.
- We'll do it in two parts. In the first part of the practical, we'll create a policy granting full access to EC2. Then, we'll create a user named Eric and attach that policy to him.
- In the second part, we'll create a group and add two more users, Jack and Ade, to that group. Afterwards, we'll create a policy for granting full access to EC2 and S3, and attach it to the group.

## Part-1

1. Navigate to the AWS Management Console.
   - Use the search bar to locate the Identity and Access Management (IAM) service.
     ![AWS Management Console](img/AWSManagementConsole.png)
2. Now, on the IAM dashboard, navigate to the left sidebar and click on "Policies."
   - From there, search for "EC2" and select "AmazonEC2FullAccess" from the list of policies.
   - Proceed by clicking on "Create policy" to initiate the policy creation process.
     ![AmazonEC2FullAccess](img/AmazonEC2FullAccess.png)
3. Now, select all EC2 actions.
   ![EC2 actions](img/EC2Actions.png)
4. Tick "All resources" and click "Next."
   ![Allresources](img/Allresources.png)
5. Now, click on Create policy
   ![createPolicy](img/createPolicy.png)
   - This is the policy we have created.
     ![createdPolicy](img/createdPolicy.png)
6. Now, proceed to the "Users" section, and select the option to "Create User."
   ![UsersSelect](img/UsersSelect.png)
7. Enter the desired username for the user.
   - Then select the option "Provide user access to the AWS Management Console" if access to the web-based console interface is required.
   - Proceed to set up a password for the user.
   - Check the box "Users must create a new password at next sign-in" if allowing users to change their password upon first sign-in is preferred.
     ![CreateNewUser](img/CreateNewUser.png)
8. Select "Attach policy directly" and navigate to "Filter customer managed policies."
   - Choose the policy you created named "policy_for_eric."
   - Then proceed by clicking "Next."
     ![ChoosePolicy](img/ChoosePolicy.png)
    #### Note- AWS policies:
     - Managed Policies: Made by AWS, used by many
     - Customer Managed Policies: You make and manage them.
     - Inline Policies: Made for one specific thing.
9. Next, click on "Create User."
    ![CreateUser](img/CreateUser.png)
10. Ensure to save these details securely for future reference.
    - Click on "Return to user list"
      ![Returntouserlist](img/Returntouserlist.png)

## Part-2
1. On the "User Groups" section, enter a name for the group.
   - Click on "Create User Group."
   - Then, proceed to the "Users" section.
     ![UserGroups](img/UserGroups.png)
     ![CreateUserGroup](img/CreateUserGroup.png)
   This is the user you've created.
   - Now, let's proceed to the "Users" section.
     ![userCreated](img/userCreated.png)
2. Now, let's create a user named Jack.
   ![createUser](img/createUser.png)
3. In the "Permissions" options, select "Add user to group."
   - Then, in the "User groups" section,
   - Choose the group you created named "development-team,".
   - Click "Next."
     ![Permissions](img/Permissions.png)
4. Now, click on Create user
   ![CreateUserJack](img/CreateUserJack.png)
   - You need to repeat the same process for user Ade. Create user Ade and add him to the user group "Development-team."
     ![CreateUserAde](img/CreateUserAde.png)
5. Navigate to the "Policies" section and click on "Create Policy" to begin crafting a new policy.
   ![CreatePolicy](img/CreatePolicy.png)
6. Choose the two services, EC2 and S3, from the available options.
   ![EC2](img/EC2.png)
   ![S3](img/S3.png)
7. Enter the desired policy name and proceed to click on the "Create policy" button.
   ![desiredPolicyName](img/desiredPolicyName.png)
8. Navigate to the "Users group" section and select the "Development-team" group.
   ![UsersGroupSelect](img/UsersGroupSelect.png)
9. Proceed to the "Permissions" section and add the necessary permissions.
    ![PermissionsSection](img/PermissionsSection.png)
10. Click on the attach policy
    ![attachPolicy](img/attachPolicy.png)
11. Select "Customer Managed Policy" as the policy type.
   - Then choose the "development-policy" you created.
   - Click "Attach Policy."
     ![CustomerManagedPolicy](img/CustomerManagedPolicy.png)
   - The policy is now attached to the group, granting full permissions to EC2 and S3 for the group's users.
     ![fullPermissions](img/fullPermissions.png)


## Project reflection:

   - Understanding IAM: IAM serves as the security foundation for AWS resources, controlling access and permissions.
   - Security Importance: IAM ensures data protection, compliance, and prevents unauthorised access.
   - Policy Creation: Participants learned to craft IAM policies to regulate resource access effectively.
   - Practical Application: Hands-on exercises equipped participants to set up IAM users, groups, and roles, enhancing their real-world IAM implementation skills.

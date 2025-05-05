# Mini Project-Advanced Linux Commands
## Task 1:
- Creating a new user
  ![create-new-user](img/create-new-user.png)
- Granting administrator privileges
  ![admin-user](img/admin-user.png)
- Log out and log back in as the newly created user
  ![switch-user](img/switch-user.png)
- Navigate to the ` /home/johndoe' directory to explore what has been created.
  ![nav-user-dir](img/nav-user-dir.png)
## Task 2:
- Changing User Password
  ![change-passwd](img/change-passwd.png)
- Log back in as the newly created user
  
  ![login-new-passwd](img/login-new-passwd.png)
## Task 3:
- Create a group on the server and name it `devops`
  ![group-devops](img/group-devops.png)
- Create 5 users `["mary", "mohammed", "ravi", "tunji", "sofia" ]`, and ensure each user belongs to the devops group
  - Use a Bash script to automate the creation of user accounts.
    ![users-txt](img/users-txt.png)
    ![users-script](img/users-script.png)
  - Use the appropriate command to modify the permissions of users' files.
    ![change-permission](img/change-permission.png)
  - Here is the output confirming the user creation.
    ![script-run-create-users](img/script-run-create-users.png)
  - To list all local users on a Linux system, you can filter users with UID ≥ 1000 (normal users)
    ![ls-user-filter](img/ls-user-filter.png)
- Create a folder for each user in the `/home directory`. For example `/home/mary`
  - Use a Bash script to automate the creation of user directories
    ![create-home-dirs](img/create-home-dirs.png)
    ![bash-home-dirs](img/bash-home-dirs.png)
  - Here is the output indicating that the directory was successfully created.
    ![dirs-created](img/dirs-created.png)
- Ensure that the group ownership of each created folder belongs to "devops"
  - Verify the group ownership of the file or directory
    ![group-ownership-issue](img/group-ownership-issue.png)
  - Write a Bash script to automatically adjust group ownership for specific files or directories.
    ![fix-group-ownership-bash](img/fix-group-ownership-bash.png)
  - Here is the output indicating that the issue was successfully fixed.
    ![fix-group-ownership-bash-output](img/fix-group-ownership-bash-output.png)
  - Verify the group ownership of the file or directory again.
    ![group-ownership-ls](img/group-ownership-ls.png)
  

# Mini Project - Git Version Control Basics.
### Below are the detailed steps accompanied by a screenshot:
- Step 0: The git init command initialises a new Git repository.
  ![git init](img/git-init.png)
#
- Step 1: The git config command is used to modify the local configuration settings of the current Git repository
   ![git init](img/git-configure.png)
#
- Step 2: Jerry cloned the project repository from the central repository to his local machine.
  ![JR-clone](img/JR-clone.png)
#
- Step 3: Tom and Jerry pull the latest changes from the central repository to ensure they start with the most current version of the index.html file.
   ![TM-pull](img/TM-pull.png)
   ![JR-pull](img/JR-pull.png)
# 
- Step 4: They both create a new branch from the main project. A branch in Git allows developers to work on a copy of the codebase without affecting the main line
          of development. Tom names his branch navbar-nav, and Jerry names his social-links.
   ![TOM Switch brnach](img/TM-Switch-brnach.png)
  
   ![JERRY Switch brnach](img/JR-Switch-brnach.png)
# 
- Step 5: Tom and Jerry vim the index.html
  
   ![TM-vim-index](img/TM-vim-index.png)
  
   ![JR-vim-index](img/JR-vim-index.png)
#
- Step 6: The original index.html file before any edits by Tom and Jerry.
   ![index-b4-edit](img/index-b4-edit.png)
#
- Step 7: On their branch, Tom updates the navbar-nav in index.html and Jerry updates the social-links in index.html.
  
   ![index-after-TM-edit-NB](img/index-after-TM-edit-NB.png)
   - Jerry works on his branch to add Hashnode social link to the social-links of the same file.
     
   ![index-after-JR-edit-SL](img/index-after-JR-edit-SL.png)
#
- Step 8: Tom check the git log
   ![TM-git-log](img/TM-git-log.png)
  - Jerry check the git status
   ![JR-git-status](img/JR-git-status.png)
#
- Step 9: Jerry then pushes his updated branch and creates a PR for his changes.
  ![JR-add-commit-push](img/JR-add-commit-push.png)

  - Tom pushes his updated branch and creates a PR for his changes.
    ![TM-add-commit-push](img/TN-add-commit-push.png)
#
- Step 10: Tom checkout to main branch

   ![git-checkout-main](img/git-checkout-main.png)
#
- Step 11:The dashboard contains a Pull Request button accessible to both developers in the remote repository
  ![dashboard-recent-push](img/dashboard-recent-push.png)

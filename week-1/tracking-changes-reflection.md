    # Tracking Changes Reflection

    How does tracking and adding changes make developers' lives easier?

    Tracking and adding changes makes developers' lives easier because git allows them to implement a version control system and keep track of work.  Developers can commit very specific changes to know exactly what was changed and why.  In addition, tracking these changes on a regular basis allows developers to easily catch bugs and go back to clean, working code if necessary.

    What is a commit?

    A commit is a snapshot of your code at a specific time.  A commit is the official "saving" of the code and logged in the git system.  It is beneficial to commit early and often so you see the specifics of what you have changed in your code.

    What are the best practices for commit messages?

    The first best practice for commit message is to write your message in the imperative, present tense.  For example, you should type "Change README" as opposed to "Changed README".  A second best practice for commit messages is to use the message as instructions for what the commit will do instead of saying what you did.  These messages should be meaningful and any developer reading through the git log should be able to understand what was done and why.

    What does the HEAD^ argument mean?

    The HEAD^ argument means that you can undo the last stage or commit made via the command - git reset HEAD^ <file_name>.

    What are the 3 stages of a git change and how do you move a file from one stage to the other?

    The first stage of a git change is when you have solely updated a file.  This is considered untracked.  To move the file from untracked to staged, you enter the command - git add <file_name>.  The second stage is when the file is moved to staging.  In staging, you will review the file and make sure the code is working properly.  To move the filed from staged to committed, you enter the command - git commit -m "commit message here".  The third stage is when the file is committed and the changes have been officially saved.  To see the committed changes, you enter the command - git log.

    Write a handy cheatsheet of the commands you need to commit your changes?

    git status: check current status of any changes made.
    git add . : use to move changes to staging.
    git commit -m "commit message here" : use to move changes from staging to committed.
    git log: check status of committed changes

    What is a pull request and how do you create and merge one?

    A pull request allows you to update your master branch with a feature branch.  It is important to do all of your work in a feature branch first in order to keep the master branch clean.  To create a pull request, you will first need to create a feature branch by typying in the command - git checkout -b branch_name.  You will then do all of your work in the feature branch and add and commit your changes.  After this, you will enter the command - git push origin branch_name in order to update the code in GitHub.  Once in GitHub, you will create a new pull request and merge the pull request in order to update the changes to the master branch.  After the branch is merged with master, you will need to delete the feature branch in GitHub.  Next you will go back to your Terminal and enter the command - git pull origin master to update the changes on your local machine.  Lastly, you will delete the feature branch on your local machine by entering the command - git branch -d branch_name.

    Why are pull requests preferred when working with teams?

    Pull requests are preferred when working with teams because it is a way to keep the organized.  Each individual can work on a separate feature branch, and then push these changes to the master branch.  Pull requests are also preferred because it allows the team to review the changes before they are merged into the master branch.

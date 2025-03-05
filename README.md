# What a user needs to do to run terraform init/plan/apply using my code on their own HC environment?

1. Clone my repository to a local path: https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-a-repository-from-github-to-github-desktop
2. User will need to make updates, as he will be using his environment, he will need to update the name of the organization, get his own tokens, use his own GitHub repo URL, etc.
3. User needs to have terraform installed locally. If he will be using Windows CMD, just to make sure he is in the directory containing files. We will need main.tf and variables.tf there.
4. Once user cd in the folder with the files, he can run "terraform init" to initialize connection.
5. User might need to authenticate if he is using tis for the first time.
6. User can run also "terraform validate" to check if he didn't make any mistakes that can be detected and corrected.
7. User can run "terraform plan" to revise what changes are going to be made in his environment.
8. If there are no errors, user can run "terraform apply" to actually apply the changes.
9. If no errors are received, user can check in HC Terraform Cloud environment, in the specified organization, if the project was created with the 4 workspaces (1 VCS driven and 3 cli driven) and a variable with 2 variables applied to 3 cli workspaces.

from git_helper import git_clone, execute_shell_command

# username = input("Type your username: \n")
username = 'edcervan'
branch = input("Type the branch that you want to download: \n")

repositories_data = {
    "backend":
        {
            "url": "https://github.com/"+username+"/backend.git",
        },
    "frontend":
        {
            "url": "https://github.com/"+username+"/frontend.git",
        }
}

# Creating directories
for name, data in repositories_data.items():
    execute_shell_command("git clone " + data['url'])
    execute_shell_command("git checkout " + branch)
    execute_shell_command("git pull")

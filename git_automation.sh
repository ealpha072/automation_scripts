#automate git configuration in linux
#check if git is installed

function setup_git() {
    while true; do
        #prompt user for email and username
        read -p "Enter your github username: " username
        read -p "Enter your guthub email: " email

        #check with user before configuring
        echo "Please confirm below"
        echo "username: $username"
        echo "email: $email"
        read -p "Confirm [yes/no]: " confirm_config

        if [[ $confirm_config -eq "yes" ||  $confirm_config -eq "y" ]]; then
            #set configurations
            git config --global user.name "$username"
            git config --gloabl user.email "$email"
            echo "Git configuration succefful. Exiting program"
            exit 1
        else
            echo "What do you want to do?"
            echo "[1]: Edit username"
            echo "[2]: Edit email"
            echo "[3]: Exit program"
            read -p "Please type [1,2,3]" choice

            if [ $choice -eq 1 ]; then
                read -p "Enter your github username: " username
            elif [ $choice -eq 2 ]; then
                read -p "Enter your guthub email: " email
            else
                exit 1
            fi
        fi
    done
}

function check_gitconfig(){
    username=""
    email=""

    #check if git config --list has user name and email fields
    while IFS= read -r line; do
        if [[ $line == "user.name="* ]];then
            username="${line#*}"
            echo "$username"
        fi

        if [[ $line == "user.email="* ]]; then
            email="${line#*}"
            echo "$email"
        fi
    done < <(git config --list)

    read -p "Username and email found, override?[yes/no]: " user_option

    if [[ $user_option == "yes" || $user_option == "y" ]]; then
        setup_git
    elif [[ $user_option == "no" || $user_option == "n" ]]; then
        echo "Exiting program"
        exit 1
    fi
}

function choose_distro(){
	#choose distro
	echo "Choose distro below"
	echo "Ubuntu [1]"
}


which git > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "Git found on system, proceeding to next step"
    check_gitconfig
else
	read -p "Git not found. Install git?[yes/no]: " git_install_response
	
	if [[ $git_install_response -eq "yes" || $git_install_response -eq "y" ]]; then
        apt-get install git

        if [ $? -eq 0 ]; then
            echo "Successfuly instaled git on system, proceeding to setup"
        else
            echo "Unable to instal git, please try manually"
            exit 1
        fi
    else
        echo "Exiting git install"
        exit 1
    fi
fi


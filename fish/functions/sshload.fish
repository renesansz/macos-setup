function sshload
    if [ "$argv" = "" ]
        echo "Please enter a key name"
        return 1
    end
    
    # Load SSH
    ssh-add "$HOME/.ssh/$argv"
end

# Setup
1. Download and install git and gitbash: https://git-scm.com/downloads
2. (in Windows) Go to where you want to download the repo then right click and open with gitbash then type
```
ssh-keygen
```
Hit enter until the screaming stops, then return here to github. Klick your profile icon, and go to 'settings' and then 'SSH and GPG keys'. Click 'New SSH Key'. Go to C:\Users\<username>\.ssh and open id_rsa.pub. This is your public ssh key. Copy the contents into github and click 'Add SSH key'.
```
git clone git@github.com:CaveCouncil/roguelike-cardgame.git --branch main roguelike-cardgame
```
```
cd roguelike-cardgame
```

3. Open Godot and click import - navigate to the folder location and click to confirm


# Recommended Process for making updates
1. Make a new branch in github (or git) with a descriptive name
2. Checkout that branch
```
git fetch
git checkout branchname
```
3. Make your changes and stage them
```
git status
git add <files/folders that you changed or added>
gir rm <files/folders that you removed>
```

4. Make a commit
```
git commit -m "Description of your changes goes here"
```

5. Push your changes
```
git push
```

## How to get your changes into the main branch
1. Make a Pull Request into the main branch from your branch via github
2. Complete the Pull Request (make sure to squash merge)

## How to get changes from the main branch into your branch
```
git fetch
git merge origin/main
# Resolve any merge conflicts
git commit
```
This will open a vim window. Press <ESC> and then type 
```
:q!
```
Push your changes back to the remote of your working branch
```
git push
```

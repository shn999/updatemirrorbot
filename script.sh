#Update script of UserBot by @marshmello61
#Some fixes by @RoyalBoy69
#Powered by @sashn9


repo="magneto-python-aria"
rm -rf ${repo}

echo "You're running the magneto-python-aria updater script"
echo " "
# Get username of user
echo -n "Enter your GitHub username: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Have you forked magneto-python-aria from magneto261290 or has the same repo name i.e. magneto-python-aria? [y/n]: "
read fork
echo " "

if [[ "${fork}" == 'y' ]]; then
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
elif [[ "${fork}" == 'n' ]]; then
	echo -n "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
else
        echo " "
        echo "You were only supposed to enter y or n"
        exit 1
fi

echo " "
echo "Updating your magneto-python-aria repo"
git pull https://github.com/magneto261290/magneto-python-aria.git
git diff
git commit -m "😎😎"
git push
echo " "
echo "Updated"
cd ..
rm -rf ${repo}

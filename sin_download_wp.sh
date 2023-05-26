#!bash
#this script will be automatic download wp in Directadmin user
#Created by Sinos

echo -e "\nThis is program to downlaod a WordPress CMS in Directadmin."
echo -e "\nEnter your username: "
read usn

if [ -d /home/$usn/ ]; then
	echo -e "\nEnter wp version you want to install, like (6.2.2) : "
	read wpv
	wget -P /home/$usn/public_html/ https://wordpress.org/wordpress-$wpv.zip
	unzip wordpress-$wpv.zip -d /home/$usn/public_html/
	chown $usn:$usn /home/$usn/public_html/* -R
	mv -f /home/$usn/public_html/wordpress/* /home/$usn/public_html
	rm -rf wordpress wordpress-$wpv.zip
	
else
	echo -e "\nThe user was not exist in server !"
fi

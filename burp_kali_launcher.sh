#!/bin/bash

burp_path=$1

if [ ! -f "$1" ];then
    echo $'\e[0;33m'[-] Enter the correct path to burpusite .jar file using the syntax ./burp_kali_launcher.sh /opt/burp/burpsuite_pro_v2021.4.2.jar$'\e[0m'
fi

if [ ! -d "${HOME}/.local/share/applications/" ];then
     echo $'\e[1;32m'[+] Creating applications directory where the shorcut will be places$'\e[0m'
     mkdir ${HOME}/.local/share/applications/
fi

echo $'\e[1;32m'[+] Creating launcher item$'\e[0m'

cat << EOF > ${HOME}/.local/share/applications/burpsuite.desktop
[Desktop Entry]
Name=burpsuite
Encoding=UTF-8
Exec=sh -c "java -jar $burp_path"
Icon=kali-burpsuite.png
StartupNotify=false
Terminal=false
Type=Application
Categories=03-webapp-analysis;03-06-web-application-proxies;
X-Kali-Package=burpsuite
EOF


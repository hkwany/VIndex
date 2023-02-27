<<parameters
Name	Description	Type	Default Value
file_folder	folder to the file	String	/tmp
file_name	file name	String	Adobe_Flash_Installer
parameter	parameter	String	-URL 192.168.57.101
library_path	library path	String	/tmp
parameters

dpkg -s libcurl4 > /dev/null 2>&1 && dpkg -s libcurl4-openssl-dev > /dev/null 2>&1 && dpkg -s libboost-all-dev > /dev/null 2>&1

if [ "$?" -eq 1 ]; then
        dpkg -s libcurl4 > /dev/null
        if [ "$?" -eq 1 ]; then
                apt-get install -y libcurl4

        fi
        dpkg -s libcurl4-openssl-dev > /dev/null
        if [ "$?" -eq 1 ]; then
                apt-get install -y libcurl4-openssl-dev
        fi
        dpkg -s libboost-all-dev > /dev/null
        if [ "$?" -eq 1 ]; then
                apt-get install -y libboost-all-dev
        fi

fi

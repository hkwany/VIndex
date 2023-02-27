<<parameters
Name	Description	Type	Default Value
remote_file	url of remote file	string	https://github.com/hkwany/VIndex/raw/master/VIndex/TTP/T1105/binary/Adobe_Flash_install.tar
dest_path	destination to store the downloaded file	string	/tmp/Adobe_Flash_install.tar
parameters

wget #{remote_file} -O #{dest_path}


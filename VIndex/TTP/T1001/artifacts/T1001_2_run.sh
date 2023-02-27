<<parameters
Name	Description	Type	Default Value
src_tar_file	source tar compressed file	String	/tmp/Adobe_Flash_install.tar
dest_folder	the destination folder for src_tar_file to decompress to	String	/tmp
parameters

tar -xf #{src_tar_file} -C #{dest_folder}


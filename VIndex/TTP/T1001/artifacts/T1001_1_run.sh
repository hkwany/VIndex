<<parameters
Name	Description	Type	Default Value
unrar_path	Path for the unrar used to decompress	String	C:\Program Files\WinRAR\UnRAR.exe
src_rar_file	source rar compressed file	String	$env:TEMP\Adobe_Flash_install.rar
dest_folder	the destination folder for src_rar_file to decompress to	String	$env:TEMP\
parameters

& "#{unrar_path}" x #{src_rar_file} #{dest_folder}


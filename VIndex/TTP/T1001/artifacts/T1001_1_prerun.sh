<<parameters
Name	Description	Type	Default Value
unrar_path	Path for the unrar used to decompress	String	C:\Program Files\WinRAR\UnRAR.exe
src_rar_file	source rar compressed file	String	$env:TEMP\Adobe_Flash_install.rar
dest_folder	the destination folder for src_rar_file to decompress to	String	$env:TEMP\
parameters

if (Test-Path "#{unrar_path}") { 
	echo "unrar has existed"
}else{
	echo "unrar hasn't existed"
	$url = 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-611.exe'
	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
	Invoke-WebRequest -Uri $url -OutFile $env:TEMP\/winrar-x64-611.exe
	& "$env:TEMP\winrar-x64-611.exe" /S
	echo "winrar installer has been downloaded to: $env:TEMP\/winrar-x64-611.exe, and winrar has been installed to C:\Program Files\WinRAR\"
}

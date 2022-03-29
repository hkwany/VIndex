write-host "Import and Execution of SharpHound.ps1 from #{file_path}" -ForegroundColor Cyan
import-module #{file_path}\SharpHound.ps1
Invoke-BloodHound -OutputDirectory $env:Temp
Start-Sleep 5
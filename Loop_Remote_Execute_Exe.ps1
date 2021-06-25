#This works. Must be .bat files or cmd commands.
Get-Content "C:\path_to\nums.txt" | ForEach-Object {
    invoke-command -computername $_ -ScriptBlock { cmd.exe '/c c:\path_to\hw.bat'}
}
#This pops the exe locally
Get-Content "C:\path_to\nums.txt" | ForEach-Object {
    start-process "C:\Program Files (x86)\Windows Resource Kits\Tools\lockoutstatus.exe"
}
#Just need to execute any remote command
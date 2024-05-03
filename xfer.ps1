# Needed for PowerShell 7.3 and newer
$PSNativeCommandArgumentPassing = "Legacy"

& "C:\Users\smf12\AppData\Local\Programs\WinSCP\WinSCP.com" `
  /log="xfer.log" /ini=nul `
  /command `
  "open davs://steve%40folstein.org:5hqbq5tbqak5sem7@myfiles.fastmail.com/" `
  "lcd D:\src\folstein.github.io\public" `
  "cd /www" `
  "put *" `
  "exit"

$winscpResult = $LastExitCode
if ($winscpResult -eq 0) {
  Write-Host "Success"
}
else {
  Write-Host "Error"
}

exit $winscpResult

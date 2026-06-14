$allProcesses = Get-CimInstance Win32_Process -Filter "Name = 'opencode.exe' OR Name = 'OpenCode.exe'"
$mainProcesses = @()
$childPids = @()
foreach ($proc in $allProcesses) {
    if ($proc.CommandLine -match "--type=" -or $proc.CommandLine -match "opencode-restart") {
        $childPids += $proc.ProcessId
    } else {
        $mainProcesses += $proc
    }
}
$desktopExe = $null
$cliExe = $null
$oldPids = @()
foreach ($proc in $mainProcesses) {
    $oldPids += $proc.ProcessId
    if ($proc.ExecutablePath -match "opencode-aidesktop") { $desktopExe = $proc.ExecutablePath }
    else { $cliExe = $proc.ExecutablePath }
}
$allOldPids = $oldPids + $childPids
if ($desktopExe) { Start-Process -FilePath $desktopExe }
elseif ($cliExe) { Start-Process -FilePath $cliExe -WorkingDirectory $PWD.Path }
else { Start-Process -FilePath "opencode" -WorkingDirectory $PWD.Path }
foreach ($p in $allOldPids) { Stop-Process -Id $p -Force -ErrorAction SilentlyContinue }

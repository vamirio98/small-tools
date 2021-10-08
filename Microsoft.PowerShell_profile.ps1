# put this file in the %USERPROFILE%\Documents\WindowsPowerShell folder

function prompt
{
	$curr_path = (get-location).toString()

	$is_admin = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")
	if ($is_admin) {
		$suffix = '#'
	} else {
		$suffix = '$'
	}

	# define prompt style
	Write-Host ('[') -nonewline
	Write-Host ("$(Get-Date -UFormat "%a %y %b %d") ") -nonewline -foregroundcolor 'DarkGreen'
	Write-Host ("$(Get-Date -UFormat "%I:%M:%S %p")") -nonewline -foregroundcolor 'Red'
	Write-Host (']') -nonewline
	Write-Host (" Vamirio ") -nonewline -foregroundcolor 'Green'
	Write-Host ($curr_path) -foregroundcolor 'DarkGreen'

	Write-Host ($suffix) -nonewline -foregroundcolor 'Cyan'
	return " "
}

#
# List open ports on TCP and UDP
#

# Dictionary: PID -> Process Info
$processes = @{}
Get-Process -Name remoteit.windows.amd64,connectd,muxer,demuxer 2> $null | ForEach-Object {
	$processes[$_.Id] = $_
}

echo ""
echo "TCP"
Get-NetTCPConnection -OwningProcess (Get-Process -Name remoteit.windows.amd64,connectd,muxer,demuxer 2> $null | Select-Object Id,ProcessName | Select-Object -ExpandProperty Id) 2> $null |
	Select-Object @{Name="Address";	 Expression={ $_.LocalAddress }},
		@{Name="Port";		Expression={ $_.LocalPort }},
		@{Name="PID";		 Expression={ $_.OwningProcess }},
		@{Name="ProcessName"; Expression={ $processes[[int]$_.OwningProcess].ProcessName }},
		@{Name="Path";		Expression={ $processes[[int]$_.OwningProcess].Path }} |
	Format-Table -AutoSize

echo ""
echo "UDP"
Get-NetUDPEndpoint -OwningProcess (Get-Process -Name remoteit.windows.amd64,connectd,muxer,demuxer 2> $null | Select-Object Id,ProcessName | Select-Object -ExpandProperty Id) 2> $null |
	Select-Object @{Name="Address";	 Expression={ $_.LocalAddress }},
		@{Name="Port";		Expression={ $_.LocalPort }},
		@{Name="PID";		 Expression={ $_.OwningProcess }},
		@{Name="ProcessName"; Expression={ $processes[[int]$_.OwningProcess].ProcessName }},
		@{Name="Path";		Expression={ $processes[[int]$_.OwningProcess].Path }} |
	Format-Table -AutoSize

foreach ($file in (dir *.zip)){
	$dir = $file.basename 
	mkdir $dir
	$shell = New-Object -ComObject shell.application
	$zip = $shell.NameSpace($file.fullname)
	
	$dest = $shell.NameSpace((Get-Item $dir).fullname)
	$dest.CopyHere($zip.Items()) 
}
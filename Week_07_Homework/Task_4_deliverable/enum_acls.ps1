# script for enumerating files and sub-directories in current working directories

$directory=$(Get-ChildItem)

foreach ($item in $directory) {
    Get-Acl $item
}
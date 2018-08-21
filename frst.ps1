function ch
{
    param([string[]] $lst, [string] $val)
    $flag = $true
    foreach($v in $lst)
    {
        if($v -eq $val)
        {
            $flag =$false
        }
    }

    return $flag
}
function addCh 
{
    [CmdletBinding(SupportsShouldProcess = $true)]
    param(
        [parameter(Mandatory = $true, ValueFromPipeline = $true)] [string[]] $lst, 
        [parameter(Mandatory = $true)] [ValidateScript({ch $lst $val})] [string] $val
        )

        Write-Host "passed"
}
$a = "berlin"
$b = "london"
$list = "berlin", "london", "delhi", "patna", "new york"
$flag = $false

addch $list $a
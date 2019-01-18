$file = Import-Csv "C:\temp\Members.csv"

$file

$file.Protons

($file.Protons | Measure-Object -Average).Average

for ($a = 1; $a -lt $file.Length; $a++)
{
    $col0 = ([string]$file[$a]).Split(',')[0]
    $col2 = ([string]$file[$a]).Split(',')[2]
    $col3 = ([string]$file[$a]).Split(',')[3]
        if ($col2 -eq $col3)
            {echo $col0}
}


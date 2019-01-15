$a=3
write host $a
$a.GetType().Name

$b=3.3
write host $b
$b.GetType().Name

$c="3.3"
write host $c
$c.GetType().Name

$d=$a + $b
write host $d
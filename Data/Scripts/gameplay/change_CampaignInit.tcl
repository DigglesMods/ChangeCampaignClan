$start
$replace
set_ownerrace 	0 0
$with
set_ownerrace 	0 $print:CLAN
$end


$if:SWAP_CLAN

$start
$replace
set_ownerrace	1 1
set_ownerrace	2 2
set_ownerrace	3 3
set_ownerrace	4 4
$with
for {set i 1} {$i<5} {incr i} {
	if {$i == $print:CLAN} { 
		set_ownerrace $i 0
	} else {
		set_ownerrace $i $i
	}
}
$end

$ifend
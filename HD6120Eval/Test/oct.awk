BEGIN { FS = " "}

{
if ( $0 ~ /^(\s|\t)+[0-9A-F]{4}\s[0-9A-F]{2}\s[0-9A-F]{2}/ )
	{
		str = $2 $3
		printf("%s (%04o) %s %s  (%04o) ", $1, strtonum("0x" $1), $2, $3, strtonum("0x" str))
		printf("%s\n", substr($0, 14, length($0) - 14 + 1) )		
	}
else
	printf("%13s%s\n", " ", $0) 
}
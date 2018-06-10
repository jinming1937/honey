$price = 153.2340000432;

$price =~ s/(\.\d\d[1-9]?)\d*/$1/g;
print "$price\n";
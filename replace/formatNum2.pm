$num = 1234567890;
$num =~ s/(?=(\d{3})+(?!\d))/,/g; # 注意这里要加g,
print "The US population is $num\n";

# 
#
#

$pop = 41341241442;
$pop =~ s/(?<=\d)(?=(\d\d\d)+$)/,/g;
print "The US population is $pop\n";
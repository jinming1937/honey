
#
#
#

$num1 = 1234567890;
$num1 =~ s/(?<=\d)(?=(\d\d\d)+$)/,/g;
print "The US population is $num1\n";

# 
#
#

$num2 = 1234567890;
$num2 =~ s/(?=(\d{3})+(?!\d))/,/g; # 注意这里要加g,
print "The US population is $num2\n";

#
#
#

$num3 = 1234567890;
$num3 =~ s/(\d)(?=(\d{3})+(?!\d))/$1,/g; # 注意这里要加g,
print "The US population is $num3\n";

#
#
#

$num4 = 1234567890;
$num4 =~ s/(\d)(?=(\d{3})+\b)/$1,$2/g; # 注意这里要加g,
print "The US population is $num4\n";

$num5 = 1234567890;
while( $num5 =~ s/(\d)(?=(\d{3})+\b)/$1,$2/g ){
  # no code
}
print "The US population is $num5\n";


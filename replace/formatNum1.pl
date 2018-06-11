
#
#
#

$num1 = 1234567890;
$num1 =~ s/(?<=\d)(?=(\d{3})+$)/,/g;
print "The US population is 1: $num1\n";

# 
#
#

$num2 = 1234567890;
$num2 =~ s/(?=(\d{3})+(?!\d))/,/g; # 注意这里要加g,
print "The US population is 2: $num2\n";

#
#
#

$num3 = 1234567890;
$num3 =~ s/(\d)(?=(\d{3})+(?!\d))/$1,/g; # 注意这里要加g,
print "The US population is 3: $num3\n";

$num3p = 1234567890;
$num3p =~ s/(\d)(?=(\d{3})+$)/$1,/g; # X
print "The US population is 3p: $num3p\n";


#
# 至此，从右向左替换
#

$num4 = 1234567890;
$num4 =~ s/(\d)((\d{3})+\b)/$1,$2/g; # 注意这里要加g,
print "The US population is 4: $num4\n";

$num5 = 1234567890;
while( $num5 =~ s/(\d)((\d{3})+\b)/$1,$2/g ){
  # no code
}
print "The US population is 5: $num5\n";


# 目标 匹配 小数，正负数

print "Enter a temperature in Celsius:\n";
$celsius = <STDIN>; # 从用户处接受一个输入
chomp($celsius); # 去掉 $celsius 后的换行符

if ( $celsius =~ m/^[+-]?\d+(\.\d+)?$/ ) {
  $fahrenheit = ($celsius * 9 / 5) + 32; #计算华氏摄氏度
  print "$celsius C is $fahrenheit F.\n";
  printf "%.2f C is %.2f F.\n", $celsius, $fahrenheit; # printf 格式化输出
} else {
  print "Expecting a number, so I don't understand \"$celsius\".\n";
}

# 摄氏度-华氏度 转换

print "Enter a temperature (e.g., 32F, 100C):\n";
$celsius = <STDIN>; # 从用户处接受一个输入
chomp($celsius); # 去掉 $celsius 后的换行符

if ( $celsius =~ m/^[+-]?\d+[CF]$/ ) {
  $fahrenheit = ($celsius * 9 / 5) + 32; #计算华氏摄氏度
  # print "$celsius C is $fahrenheit F.\n";
  printf "%.2f C is %.2f F.\n", $celsius, $fahrenheit; # printf 格式化输出
} else {
  print "Expecting a number, so I don't understand \"$celsius\".\n";
}

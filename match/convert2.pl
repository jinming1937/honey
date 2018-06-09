# 摄氏度-华氏度 转换

print "Enter a temperature (e.g., 32F, 100C):\n";
$input = <STDIN>; # 从用户处接受一个输入
chomp($input); # 去掉 $input 后的换行符

if ( $input =~ m/^([+-]?\d+(?:\.\d+)?)\s*([CF])$/i ) {
  $InputNum = $1;
  $type     = $2;
  # if ($type eq "C" or $type eq "c") {
  if ($type =~ m/c/i) {
    $celsius = $InputNum;
    $fahrenheit = ($celsius * 9 / 5) + 32; #计算华氏摄氏度
  } else {
    $fahrenheit = $InputNum;
    $celsius = ($fahrenheit - 32 ) * 5 / 9; #计算华氏摄氏度
  }
  printf "%.2f C is %.2f F.\n", $celsius, $fahrenheit; # printf 格式化输出
} else {
  print "Expecting a number, so I don't understand \"$input\".\n";
}

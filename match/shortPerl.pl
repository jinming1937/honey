#perl 入门

# 第一个计算摄氏度-华氏度转换的例子
$celsius = 30;
$fahrenheit = ($celsius * 9 / 5) + 32; #计算华氏摄氏度
print "$celsius C is $fahrenheit F.\n";

# perl 控制流
$celsius = 20;
while ($celsius <= 45)
{
  $fahrenheit = ($celsius * 9 / 5) + 32; #计算华氏摄氏度
  print "$celsius C is $fahrenheit F.\n";
  $celsius = $celsius + 5;
}

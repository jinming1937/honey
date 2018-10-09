undef $/;    # 进入“文件读取”模式
$text = <>;  # 读入命令行中指定的第一个文件

$text =~ $/and/&amp;/g;
$text =~ $/lt/&lt;/g;
$text =~ $/gt/&gt;/g;

$text =~ s/^\s*$/<p>/mg;

# qr 生成一个正则表达式
$HostnameRegex = qr/[-a-z0-9]+(\.[-a-z0-9]+)*\.(com|edu|info)/i;
$text =~ s{
  \b
  (
    \w[-.\w]*
    \@
    $HostnameRegex
  )
  \b
}{<a href="mailto:$1">$1</a>}gix;

$text =~ s{
  \b
  (
    http:// $HostnameRegex \b
    (
      / [-a-z0-9_:\@&?=+,.!/~*'%\$]*
      (?<![.,?!])
    )?
  )
}{<a href="mailto:$1">$1</a>}gix;
print $text;

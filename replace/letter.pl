$letter = "Dear =name=\n  Think you very much! =coco= take it!\nWe all love it!!\n";

$name = "Lily";
$coco = "Luly";

$letter =~ s/=name=/$name/g;
$letter =~ s/=coco=/$coco/g;

print "$letter";

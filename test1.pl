=begin
Single quotes don't replace $var.
Double quotes do.
=cut
$var = 5;
print "Var is replaced in double quotes var = $var\n";
print 'Var is not replaced in double quotes var = $var';
print "\n";

=begin
Arrays variable names begin with '@' symbol
Each term in array is denoted using '$' symbol
=cut
@arr1 = ("aA","bB","cC");
print "Written using array index in sq brackets $arr1[2]\n";

=begin
Dictionary is defined variable name begins with '%' symbol
Use key value pair using '=>' symbol
Find value by denoting key as $dict_name{\"key\"} 
Note the curly brackets and escape char to denote quotes
=cut
%arr1 = ("aA" => 1,"bB" => 2,"cC" => 3);
$idx = "bB";
print "Written using key string in curly brackets $arr1{\"bB\"}\n";
print "Written using extra var in curly brackets: $arr1{$idx}\n";

=begin
String comparisons using eq (equal), ne (not equal), 
gt (greater than), lt, ge (greater or equal),le,
cmp (compare. returns -1, 0, 1).

OUPUT INFO: Homer wears large brown shoes size 12. For each
Include large if size>10. If not in hash, add.
=cut

@family = ('Homer', 'Moe', 'Maggie');
%shoe_color = ('Lisa' => 'red', 'Homer' => 'brown', 'Maggie' => 'pink', 'Marge' => 'blue', 'Bart' => 'yellow');
%shoe_size = ('Moe' => 9, 'Lisa' => 7, 'Homer' => 12, 'Bart' => 8, 'Maggie' => 4);
for ($i = 0; $i<3; $i++){
$name = $family[$i];
$flag_color = exists $shoe_color{$name}? $shoe_color{$name}:"black";
$flag_size = exists $shoe_size{$name}? $shoe_size{$name}: 99;
if ($flag_color == "black"){
    $shoe_color{$name} = "black"; 
}
#Note the flag_large includes space if large else is empty
$flag_large = ($flag_size>10)?"large ":""; 


if ($flag_size == 99){
    $shoe_size{$flag_size} = 99;
}
#flag_large if present inserts space.Gap between variable names wud cause extra gap if not large 
print "$name wears $flag_large$flag_color shoes size $flag_size\n";
}

=begin
Loops include usual set. Note iterator is also variable so '$' symbol
-'until' loop is similar to while
-foreach $var (@array){#loop}
-'next' is like 'continue' while 'last' is like 'break'

OUTPUT INFO: Print even till we hit 237 in array
=cut

@NUMBERS = (951,402,984,651,360,69,408,319,601,485,980,507,725,547,
544,615,83,165,141,501,263,617,865,575,219,390,237,412,566,826,248,
866,950,626,949,687,217,815,67,104,58,512,24,892,894,767,553,81,379,
843,831,445,742,717,958,609,842,451,688,753,854,685,93,857,440,380,
126,721,328,753,470,743,527);

# write your code below
foreach $num (@NUMBERS){
    if($num%2==0){
        print "$num\n";
    }
    if ($num ==237){
        last;
    }
}

=begin
$a = $x++ will assign $a with 10 and $x with 11 (autoincrement $x after assigning value to $a)
$a = ++$x will assign $x with 11 then assign $a with 11 (autoincrement $x before assigning value to $a)
'.' dot is used for string concatenation
'x' cross for string repition
'..' python range. Application to letters too.
=cut

$a = 5;
$x = 0;
$a = $x++;
print "post auto-increment a: $a x: $x\n";
$a = ++$x;
print "pre auto-increment a: $a x: $x\n";

@list_num = (30..36);
print @list_num;
print "\n a = ".$a." now\n";
@list_char = ('e'..'k');
print @list_char;

=begin
References are pointers of c. 
Backslach '\' used instead of * and $ instead of &
ref($var) gives data type of that which var points as scalar, array, hash, ref etc.
Reference to a function by prefixing the reference with \&. 
Call that function using &$ref_func
=cut


$point_arr = \@family;
#point to an array. Print it by prefixing like array
print @$point_arr;

$point_num = \$x;
#point to an array. Print it by prefixing like array
print $$point_num;

#data type of instance using pointer
print "\nFamily is of type ",ref($point_arr);

=begin
subroutines (sub) aka functions
Arguments are saved in array @_. Access as $_[0] etc.
Pass array to sub as ref. Return($var) exits.
All variables are global. For private scope: my $var
OUTPUT FORMAT: Calculate and print diff between min and max of arrays given.
=cut

@car_prices = (100, 250, 95, 1300, 4534, 102, 100, 97);
@flight_prices = (85.20, 79.99, 45.30, 130, 45.34, 110.25, 100, 917);

print max(@car_prices)-min(@car_prices);
print "\n";
print max(@flight_prices)-min(@flight_prices);
#array is passed. @_ opens array
sub min() {
    my $min = 1000;
    foreach $i (@_){
        if($i <$min){
            $min = $i;
        } 
    }
    return($min);

}
sub max() {
    my $max = 0;
    foreach $i (@_){
        if($i >$max){
            $max = $i;
        } 
    }
    return($max);
}

=begin
Regex: m// to match and s// to replace
. : Match any except newline. Modifier m : Match any including newline
^ : Match beginning of line
$ : Match end
| : possible patterns
[]: Character/number set
=cut

$name = "Joseph Stalin129/google";

if($name =~ m/jo/){
    print "Matched to jo";
}
if($name =~ m/jo/i){
    print "Matched with modifier i : Case insentivite";
}
$group_start = $name =~ m/^Jo/? "\nJo start Found":"\nJo start Not found";
print $group_start;
$group_end = $name =~ m/le$/? "\nle end Found":"\nle end Not found";
print $group_end;
$group_or = $name =~ m/z|1/? "\nz or 1 Found":"\nz or 1 Not found";
print $group_or;
$group_dot = $name =~ m/g..gle/? "\n g..gle Found":"\n g..gle Not found";
print $group_dot;
$group_47 = $name =~ m/[4-7]/? "\n[4-7] Found":"\n[4-7] Not found";
print $group_47;
$group_pl = $name =~ m/[pl]/? "\n[pl] Found":"\n[pl] Not found";
print $group_pl;

$date = "Date:   2018-jan-23";
if($date =~ m/^Date:\s*([\d]+)-([a-z]+)-([\d]+)$/){
print "\nThe year is $1, the month is $2, the day is $3\n";
}
=begin
Regex ~ s/lookingFor/replaceWith/modifier
o : replace exp only once. 
g : replace all occurences
e : evaluate output as Perl
-------------------
\s : Match Whitespace (\S non whitespace)
\d : Match digit (\D non digit)
(): Backtracking groups to denote as $1, $2 etc
=cut
$x = "That cat is cute. Let's duplicate them.";
$y = $x;
$y =~ s/cat/dog/;
print "$y\n";
$y = $x;
#Modifier g replaces all occurences of cat, even in dupli-cat-e
$y =~ s/cat/dog/g;
print "$y\n";

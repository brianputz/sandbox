<html>
<body>
<pre><?
echo "Hello world";
// declare a variable
$name = "Sally";
// print the value of the variable $name
echo $name;
// php will evaluate the variable is you include it inside double-quotes
echo "Hello $name, how are you?";
// but it will NOT substitute inside single quotes
echo 'Hello $name how are you?';
// you could do this if you use single quotes
// the period adds strings together
echo 'Hello '.$name.' how are you?';
// notice that you can include newlines inside strings
echo "h
e
l
l
o";
// some basic string math
$phrase = "The quick brown fox jumped over the lazy dog.";
// strpos($haystack,$needle) looks for first occurrence of the 
// string $needle in the string $haystack
$the_index = strpos($phrase,'The');
// the indexes of letters in a string starts at 0. 
echo $the_index;
//unlike with SQL, case matters in PHP
$the_index = strpos($phrase,'the');
echo $the_index; 
// where is fox in the phrase?
$fox_index = strpos($phrase,'fox');
// fox is at position 16. let's replace fox with kangaroo using 
// substr($string,$start,$length), strpos($phrase), and strlen($phrase)
// type carefully!
$new_phrase = substr($phrase,
	0,
	strpos($phrase,'fox')).'kangaroo'.
	substr($phrase,strpos($phrase,'fox')+3,
	strlen($phrase)
);
echo $new_phrase;
// a more terse way to do the same. the string API is huge!
// str_replace($search,$replace,$subject) replaces all occurrences 
// of $search inside of $subject with the value of $replace
$new_new_phrase = str_replace('fox','kangaroo',$phrase);
echo $new_new_phrase;
// we won't cover much of the math operators, so onto looping and branching
// we will need something to loop through first. let's use an array
$names = array('Alice','Bob','Carlos');
// easy. here's a nice built-in PHP function to show you your array
var_dump($names);
// arrays are indexed starting at 0, so to print out Carlos you would type
echo($names[2]);
// we can do a simple loop through the array like this
for ($ii=0;$ii<count($names);$ii++) {
	echo "$names[$ii] is at position: $ii\n";
}
// often this is easier with a foreach
foreach($names as $key=>$val) echo "$val is at position: $key\n";
?>
</pre>
</body>
</html>
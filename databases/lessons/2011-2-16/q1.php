<html>
<body>
<form method="get">
<fieldset>
Enter your name: <input type="text" id="name" /><br/>
What is your age: <input type="text" id="age"/><br/>
<input type="submit" name="go" id="go" value="Old Enough?"/>
</fieldset>
</form>
<p>
<?
if (isset($_GET["go"]) {
    //set a variable to the value of the name
    $name = $_GET["name"];
    //set a variable for value of age
    $age = $_GET["age"];
    //test if the name and age are set
    if (isset($name) && isset($age)) {
        //print old enough to drink if age is old enough
        if ($age >= 21) {
            echo "$name is old enough to drink";
        } else {
            echo "$name is NOT old enough to drink";
        }
    }
}
?>
</p>
</body>
</html>

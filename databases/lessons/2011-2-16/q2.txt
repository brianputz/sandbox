<?
/*
 * This PHP script is broken. Find the problems in this script and fix them.
 * 
 * When you are done this should print out a message stating if the person 
 * is old enough to drink or not.
 *
 * This is a demo of one way to do input/output in PHP.
 */
?><html>
<body>
<form method="get">
<fieldset>
Enter your name: <input type="text" id="full_name" name="full_name" /><br/>
What is your age: <input type="text" id="age" name="age"/><br/>
<input type="submit" name="go" id="go" value="Old Enough?"/>
</fieldset>
</form>
<p>
<?
if (isset($_GET["go"])) {
    //set a variable to the value of the name
    $name = $_GET[""];
    //set a variable for value of age
    $age = $_GET[""];
    //test if the name and age are set
    if (isset() && isset()) {
        //a message stating if the person of legal drinking age
        if () {
            echo ;
        } else {
            echo ;
        }
    }
}
?>
</p>
</body>
</html>
<?
/*
 What is PHP exactly? It is a programming language, it is a response to the creation of the original ASP from Microsoft and 
 resembles it in many ways. PHP is a huge language. We will only make use of a very small subset of the API. By learning to 
 use PHP you will be able to build a wide array of programs, from simple utilities to full-blown, highly-trafficked websites.
 
 So what is a program, exactly? Simply stated, a program is a set of instructions. The scale of a program can vary widely. 
 The types of programs we will write using PHP will typically be short, although they will live inside a larger program, the 
 CakePHP framework. 
 
 What kinds of instructions make up a program? This varies from one program to another, but every single program ever written 
 makes use of instructions which fall into the following categories: input, output, math, string-manipulation (aka string math), 
 conditional execution (branching), and repetition (looping). You will test these out using PHP in the exercise below.
 
 What is debugging? First of all, debugging is hard. Second, you will spend a lot of time doing it. Programming languages 
 are very strict, some more than others. Nontrivial programs are complex. In the 
 course of writing any program you will encounter errors. These errors fall into one of three categories: syntax errors, 
 runtime errors, and semantic errors. 
 
 Forget about the runtime errors for now. While you're starting out with PHP you will be 
 making a lot of syntax errors. Syntax errors are the result of a missing quote mark, or a misplaced equals sign. PHP demands 
 you write your programs in a way which conforms to the syntactic rules of the PHP language. Reading 
 the error messages, paying particular attention to line-numbers will help you debug your syntax errors. Using a good text 
 editor will also help you. Semantic errors are the types of errors which happen when your program runs, but it does not 
 exhibit the desired behavior. This means that you have not really written the program you intended to write. These types 
 of errors can only be eliminated by planning ahead, testing out your code, and learning more about how to use PHP.
 
 PHP is mainly written to run on a web server, but you can use it interactively as well.
 
 
*/
// php -a;
echo "Hello world";

// declare a variable
$name = "Sally";

// print the value of the variable $name
echo $name;

//php will evaluate the variable is you include it inside double-quotes
echo "Hello $name, how are you?";

//but it will NOT substitute inside single quotes
echo 'Hello $name how are you?';

// you could do this if you use single quotes
// the period adds strings together
echo 'Hello '.$name.' how are you?';


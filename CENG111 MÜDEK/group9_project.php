<html>
<head>
<title>Definite Integral Calculator</title>
<body bgcolor="grey">
<h1>Definite Integral Calculation</h1>
</head>

<form action="group9_project.php" method="post">
f(x) =
<input type="text" size = "1" name="A" required>+
<input type="text" size = "1" name="B" required>x+
<input type="text" size = "1" name="C" required>x&sup2;+
<input type="text" size = "1" name="D" required>x&sup3;+
exp(x)+
cos(x)<br><br>
a= <input name= "a" type= "text" size = "1" required></input>
b= <input name= "b" type= "text" size = "1" required></input>
for 
<span>&#8747;</span><sub>a</sub><sup>b</sup>
<i>f(x)d(x)</br><br>

<input type="submit" value="Submit" name="Sumbit">

<div>
<?php
if(isset($_POST["Sumbit"])){
    $A = $_POST["A"];
    $B = $_POST["B"];
    $C = $_POST["C"];
    $D = $_POST["D"];
    $a = $_POST["a"];
    $b = $_POST["b"];
    $x = $a;
    $fx = $A * $x + $B * ($x**2)/2 + $C * ($x**3)/3 + $D * ($x**4)/4 + exp($x);
    $x = rad2deg($a);
    $sinx = 1 * sin($x);

    $x = $b;
    $fx2 = $A * $x + $B * ($x**2)/2 + $C * ($x**3)/3 + $D * ($x**4)/4 + exp($x);

    $x2 = rad2deg($b);
    $sinx2 = 1 * sin($x2);  
    
    echo  (($fx2 + $sinx2) - ($fx + $sinx));  
}

?>
</form>
</div>

</body>
</html>
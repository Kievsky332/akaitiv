<?php require_once "../base.php" ?>
<?php require_once "../header.php" ?>
<?php 
$pass = $_COOKIE['pass']?? '';
if ($pass=="Konochkina" && 1 == 1):?>
    <div id="centered">
        <form action="" method="post">
            <center><input class="inpt"  name="dscrp" placeholder="Описание"><input class="inpt" type="number"  placeholder="0-999"  name="ball" require><br>
            <input type="submit" class="sbm"  require></center>
        </form>
    </div>
<?php else:?>
<?php endif;?>
<?php 

if (isset($_POST["dscrp"])){
    $dscrp = $_POST["dscrp"];
    $ball = $_POST["ball"];
    $msql = new  mysqli("localhost","root","","active");
    $msql->query("INSERT INTO `activity` (`name`,`point`)
    VALUES('$dscrp','$ball')");
    $msql->close();
}

?>
<?php require_once "../footer.php" ?> 

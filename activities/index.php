<?php require_once "../base.php" ?>
<?php require_once "../header.php" ?>
<center><h1>За это можно получить баллы:</h1></center>
<?php 
$msql = new  mysqli("localhost","root","","active");
$sql = "SELECT * FROM `activity`";
$result = $msql->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) 
        {
            $message =  $row["name"]; 
            $point =  $row["point"]; 
            $messages = "<div class='colorful'>$message  <p style='color:green;margin-left:10px;'>+$point </p></div>";
           echo $messages;
        };
}else {

    echo "0 results";
};
$msql->close();
?>
<?php require_once "../footer.php" ?>
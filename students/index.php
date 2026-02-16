<?php require_once "../base.php" ?>
<?php require_once "../header.php" ?>
<br><br>
<?php 
$a = $_GET["name"] ?? "Дмитрий Х. И.";

$msql = new  mysqli("localhost","root","","active");


$colvo =  $msql->query("
SELECT  SUM(students.score)
FROM `students` 
JOIN `groupes` 
ON students.groups =groupes.id
WHERE students.full_name = '$a'");

if ($row = mysqli_fetch_assoc($colvo)) {
    // Now you can access data using the column names as keys
    $ball =   $row['SUM(students.score)'];
} else {
    $ball = "No results found.";
};



echo "Студент —  $a<br><br>";
echo "<h1>Всего баллов :<br>$ball</h1> ";
echo "Активности:<br> ";


$result = $msql->query("
SELECT  activity.name,activity.point
FROM `event` 
JOIN `students` 
ON event.student = students.id 
JOIN `activity`
ON event.activiti_name = activity.id
WHERE students.full_name = '$a'"
);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) 
        {
            $message =  $row["name"]; 
            $user =  $row["point"]; 
            $messages = "<p> $message   +$user</p>";
           echo $messages;
        };
}else {

    echo "нету активностей ";
};

$msql->close();

?>
<?php require_once "../footer.php" ?>
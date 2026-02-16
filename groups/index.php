<?php require_once "../base.php" ?>
<?php require_once "../header.php" ?>
<br><br>
<?php 
$a = $_GET["group"] ?? "ИСП1535";

$msql = new  mysqli("localhost","root","","active");
$result =  $msql->query("
SELECT students.full_name , students.score 
FROM `students` 
JOIN `groupes` 
ON students.groups =groupes.id
WHERE groupes.groups = '$a';
");
$colvo =  $msql->query("
SELECT  SUM(students.score)
FROM `students` 
JOIN `groupes` 
ON students.groups =groupes.id
WHERE groupes.groups = '$a'");

if ($row = mysqli_fetch_assoc($colvo)) {
    // Now you can access data using the column names as keys
    $ball =   $row['SUM(students.score)'];
} else {
    $ball = "No results found.";
};


if ($result->num_rows > 0) {
    echo "Группа $a<br><br>";
    echo "<h1>Всего баллов :<br>$ball</h1> ";
    while($row = $result->fetch_assoc()) 
        {
            $name =  $row["full_name"]; 
            $ball = $row["score"]; 
            echo "<a href='/students/?name=$name'>$name</a><a style='margin-left: 10px;'>$ball</a><br><br>";
        };
}else {
    echo "Ошибка!";
};
$msql->close();

?>
<?php require_once "../footer.php" ?>
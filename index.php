<?php require_once "base.php" ?>
<?php require_once "header.php" ?>
<br><br>
<?php 
$a = $_GET["dep"] ?? "1";
$b = array(
    1 => "Диджитал",
    2 => "Кибер",
    3 =>"Техно",
    4 =>"Моссовет",
    5 =>"Датахаб",
    6 => "АртТех"
);

if($a<7){
    $r = $b[$a];

    $msql = new  mysqli("localhost","root","","active");

    $sql = "
    SELECT groupes.groups
    FROM `groupes`
    JOIN `departament`
    ON groupes.departaments =departament.id
    WHERE departament.name = '$r'";
    $result = $msql->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) 
            {
                $user =  $row["groups"]; 
                
                $colvo =  $msql->query("
                SELECT  SUM(students.score)
                FROM `students` 
                JOIN `groupes` 
                ON students.groups =groupes.id
                WHERE groupes.groups = '$user';
                ");
                
                
                if ($row = mysqli_fetch_assoc($colvo)) {
                    // Now you can access data using the column names as keys
                    $ball =   $row['SUM(students.score)'];
                } else {
                    $ball = "No results found.";
                    };

                $user1 = "<div><a href = '/groups/?group=$user'>$user</a><a style = 'margin-left: 10px ;'>$ball</a></div><br>";
                echo $user1;
            };
    }else {
        echo "-";
    };
    $msql->close();
}else{
    echo "Ошибка!";
}

?>
<?php require_once "footer.php" ?>
<?php require_once "../base.php" ?>
<?php require_once "../header.php" ?>
<br><br>
<?php if ($_COOKIE["pass"] == "Konochkina" ) :?>

<?php  if($_POST['colors']??""){
$x = $_POST['activity'];
$selectedColors = $_POST['colors']; // Получаем массив


$pairs = array_map(fn($color) => "('$color', '$x')", $selectedColors);
$result = implode(", ", $pairs);

$msql = new  mysqli("localhost","root","","active");
$msql->query("INSERT INTO `event`( `student`, `activiti_name`) VALUES $result");
$msql->query("SELECT `full_name` FROM `students` WHERE `id` = '' ");
$msql->close();
echo $result;
}else{
    echo "
    <div id='center1'> 
        <p>Начисление баллов</p>";
        echo "<form action='' method='post'> <input type='submit' class='sbm'><br><select  name='activity'>";
                $msql = new  mysqli("localhost","root","","active");
    $result1 = $msql->query("SELECT * FROM `activity`");
    if ($result1->num_rows > 0) {
        while($row = $result1->fetch_assoc()) 
            {
                $ids =  $row["id"]; 
                $activity =  $row["name"]; 
                $messages1 = "<option  value='$ids'><a>$activity</a></option>";
            echo $messages1;
            };
    }else {
        echo "<option  ><a>-</a></option>";
    };
    echo "</select><br>";



    $result = $msql->query("SELECT `id`, `full_name` FROM `students`");
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) 
            {
                $id =  $row["id"]; 
                $name =  $row["full_name"]; 
                $messages = "<input type='checkbox' name='colors[]' value='$id'><a>$name</a><br>";
            echo $messages;
            };
    }else {
        
        $msql->close();
        echo "0 results";
    };

    
    $msql->close();
    echo "</form></div>";
};

?>
<?php else:?>
<?php endif;?>
<?php require_once "../footer.php" ?>


<header>
    <a href="/" class="green" id="mos">МосАктив</a>
    <a  href="/" class="green">Рейтинг</a>
    <a  href="/activities" class="green">Справочник</a>

    <?php 
    $pass = $_COOKIE['pass']?? '';  
    if($pass=="Konochkina" && 1 ==1){
        echo "<a href='/give' class='green'>Выдать баллы</a>";
        echo "<a href='/delete' class='green'>Удалить баллы</a>";
        echo "<a href='/manage' class='green'>Администрирование</a>";
    };
    ?>


    <div id="right">
        <form  method="get">
            <input class="inpt" name="q" type="search"><br><br>
        </form>
        <a href="?dep=1">Диджитал</a><br>
        <a href="?dep=2">Кибер</a><br>
        <a href="?dep=3">Техно</a><br>
        <a href="?dep=4">Моссовет</a><br>
        <a href="?dep=5">Датахаб</a><br>
        <a href="?dep=6">АртТех</a>
    </div>
</header>



<?php $a = $_GET['q']?? '';
if ($a!=="secret"): ?>    
<?php else:?>
    <div id="login">
        <div id="centered">
            <p>Вход для советников</p><br>
            <form action="" method="post">
                <input class="inpt"  name="pass" placeholder="pass" type="password">
                                <?php 
                    if (isset($_POST['pass'])){
                        if ($_POST['pass']!="Konochkina" ){
                            echo "<p style='color:red;'>Не верный пароль!</p>";
                        }else{
                            setcookie('pass',$_POST['pass'],time() +60*60*24*31 , "/"); 
                            header("Location: /");
                        }
                    };
                ?>
                <a href="/"><input type="button" value="Отмена" class="sbm"></a><input type="submit" class="sbm">
            </form>
        </div>
    </div>
<?php endif;?>

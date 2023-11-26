<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<title>Character Generator Results</title>
</head>
<body>
<?php
$servername = "";
$username = "";
$password = "";
$dbname = "";
# Add login variables for MySQL database above
$given = $_POST["given"];
$surname = $_POST["surname"];
$fname = $given . '-' . $surname;
$fnames = $given . ' ' . $surname;
$fgen = $_SESSION['generation'];
$fsex = $_SESSION['sex'];
$fmorality = $_SESSION['morality'];
$fext = $_SESSION['extraversion'];
$fsensing = $_SESSION['sensing'];
$fjudge = $_SESSION['judging'];
$fplan = $_SESSION['planning'];
$aligns = $_SESSION['alignment'];
$fclass = $_SESSION['class'];
$frace = $_SESSION['race'];
$fguild = $_SESSION['guild'];
$fprofession = $_SESSION['profession'];
$frumor = $_SESSION['rumor'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$fesrumor = mysqli_real_escape_string($conn, $frumor);
$myfile = fopen($fname.'.php', "a") or die("Unable to open file!");
$url = "https://domain.org/characters/generator/".$fname.".php";
$fnewfile = '<?php
session_start();
require($_SERVER[\'DOCUMENT_ROOT\'].\'/wp-load.php\');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>'.$fnames.' - Ravnica NPC Creator</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="'.$given . ' ' . $surname.' is a '.$frace. ' ' .$fclass.'. Their alignment is '.$aligns.' and they are a member of the '.$fguild.'">
<link href="<?php echo bloginfo(\'stylesheet_url\');?>" rel="stylesheet" type="text/css" />
<link href=\'http://fonts.googleapis.com/css?family=IM+Fell+DW+Pica:400,400italic\' rel=\'stylesheet\' type=\'text/css\' />
<style>
input[type=text] {
width: 100%;
padding: 8px 12px;
margin: 5px 5px;
}
</style>
</head>

<body>
<div class="container">

    <div class="header">
        
        <div class="subtitle"><div><?php bloginfo(\'description\');?></div></div>
        <img src="<?php echo bloginfo(\'template_directory\');?>/images/logo.png" height="364" width="600" alt="diablo 3 wordpress theme logo" />
    
    </div>
    
    <div class="content">
    
        <img src="<?php echo bloginfo(\'template_directory\');?>/images/figures.png" height="195" width="966" style="margin:0 0 3px 0;" alt="gothic statues" />
        
        <div class="main">
        
                <div class="menu">
                    <?php 
                    $args = array(
                        \'menu_class\'  => \'\',
                        \'include\'     => \'\',
                        \'exclude\'     => \'\',
                        \'echo\'        => true,
                        \'show_home\'   => true,
                        \'link_before\' => \'\',
                        \'link_after\'  => \'\' );
                    wp_page_menu($args); ?>
                    <div class="search"><form action="" method="get"><input type="text" name="s" class="search right query" /><input type="submit" class="search-button" value="" /></form></div>
                </div>                
        	<div class=\'primary\'>
            	
                              
            	<div class=\'post\'>
                
                	<div class=\'story\'>
                        <h1>'.$fnames.'</h1>
<hr><h3>Identity:</h3>
<br>
<b>Race:</b>              '.$frace.'<br>
<b>Class:</b>             '.$fclass.'<br>
<b>Sex:</b>               '.$fsex.'<br>
<b>Guild:</b>             '.$fguild.'<br>
<b>Profession:</b>        '.$fprofession.'<br>
<br>
<hr>
<br>
<h3>Alignment</h3>
<br>
<b>Alignment:</b>         '.$aligns.'<br>
<b>Moral Development:</b> '.$fmorality.'<br>
<br><hr><br>
<b>Generation:</b>        '.$fgen.'<br>
<b>Extroversion:</b>      '.$fext.'<br>
<b>Sensing Style:</b>     '.$fsensing.'<br>
<b>Judging Style:</b>     '.$fjudge.'<br>
<b>Planning Style:</b>    '.$fplan.'<br>
<br><hr></br>
<b>Rumor:</b>     '.$frumor.'<br>
</div>
                                        
                </div>
            </div>
            
<?php get_sidebar();?> 
           
<?php get_footer();?>      ';
$newxml = '<url>
<loc>'.$url.'</loc>
</url>';
fwrite($myfile, $fnewfile);

  fclose($myfile);
    $xml = fopen('sitemap.xml', "a") or die("Unable to update sitemap!");
  fwrite($xml, $newxml);
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "INSERT INTO characters (name, alignment, extroversion, generation, judging, morality, planning, sensing, sex, class, race, guild, profession, rumor, url) VALUES ('{$fnames}', '{$aligns}', '{$fext}', '{$fgen}', '{$fjudge}', '{$fmorality}',  '{$fplan}', '{$fsensing}', '{$fsex}', '{$fclass}', '{$frace}', '{$fguild}', '{$fprofession}', '{$fesrumor}', '{$url}')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully at ";
    $lurl = '<a href="'.$url.'">'.$fnames.'</a>';
    echo $lurl;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
<?php
session_start();
require($_SERVER['DOCUMENT_ROOT'].'/wp-load.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ravnica NPC Creator and Character Generator</title>
<link href="<?php echo bloginfo('stylesheet_url');?>" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=IM+Fell+DW+Pica:400,400italic' rel='stylesheet' type='text/css' />
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
        
        <div class="subtitle"><div><?php bloginfo('description');?></div></div>
        <img src="<?php echo bloginfo('template_directory');?>/images/logo.png" height="364" width="600" alt="diablo 3 wordpress theme logo" />
    
    </div>
    
    <div class="content">
    
        <img src="<?php echo bloginfo('template_directory');?>/images/figures.png" height="195" width="966" style="margin:0 0 3px 0;" alt="gothic statues" />
        
        <div class="main">
        
                <div class="menu">
                    <?php 
                    $args = array(
                        'menu_class'  => '',
                        'include'     => '',
                        'exclude'     => '',
                        'echo'        => true,
                        'show_home'   => true,
                        'link_before' => '',
                        'link_after'  => '' );
                    wp_page_menu($args); ?>
                    <div class="search"><form action="" method="get"><input type="text" name="s" class="search right query" /><input type="submit" class="search-button" value="" /></form></div>
                </div>
        	<div class="primary">
            	<div class="post">
                	<div class="story">
                        <h1>Ravnica NPC Creator and Character Generator</h1>
<?php
echo 'Welcome to CharGen alpha!'."<br><hr><br><h3>Identity:</h3><br>";
require('chargen.php');
$sqlravrace = "SELECT race FROM ravrace order by RAND() LIMIT 1";
$resultravrace = $conn->query($sqlravrace);
if ($resultravrace->num_rows > 0) {
    // output data of each row
    while($ravracerow = $resultravrace->fetch_assoc()) {
        echo "Race: " . $ravracerow["race"]."<br>";
        $_SESSION['race'] = $ravracerow["race"];
    }
} else {
    echo "0 results";
}
$sqlclass = "SELECT class FROM Class order by RAND() LIMIT 1";
$resultclass = $conn->query($sqlclass);
if ($resultclass->num_rows > 0) {
    // output data of each row
    while($classrow = $resultclass->fetch_assoc()) {
        echo "Class: " . $classrow["class"]."<br>";
        $_SESSION['class'] = $classrow["class"];
    }
} else {
    echo "0 results";
}
$sqlsex = "SELECT sex FROM sex order by RAND() LIMIT 1";
$resultsex = $conn->query($sqlsex);
if ($resultsex->num_rows > 0) {
    // output data of each row
    while($sexrow = $resultsex->fetch_assoc()) {
        echo "Sex: " . $sexrow["sex"]."<br>";
        $_SESSION['sex'] = $sexrow["sex"];
    }
} else {
    echo "0 results";
}
$sqlravguild = "SELECT guild FROM ravguild order by RAND() LIMIT 1";
$resultravguild = $conn->query($sqlravguild);
if ($resultravguild->num_rows > 0) {
    // output data of each row
    while($ravguildrow = $resultravguild->fetch_assoc()) {
        echo "Guild: " . $ravguildrow["guild"]."<br>";
        $_SESSION['guild'] = $ravguildrow["guild"];
    }
 } else {
    echo "0 results";
}
$sqlprofession = "SELECT profession FROM profession order by RAND() LIMIT 1";
$resultprofession = $conn->query($sqlprofession);
if ($resultprofession->num_rows > 0) {
    // output data of each row
    while($professionrow = $resultprofession->fetch_assoc()) {
        echo "Profession: " . $professionrow["profession"]."<br><hr><br><h3>Alignment:</h3><br>";
        $_SESSION['profession'] = $professionrow["profession"];
    }
} else {
    echo "0 results";
}
$sqlalign = "SELECT align FROM alignment order by RAND() LIMIT 1";
$resultalign = $conn->query($sqlalign);
if ($resultalign->num_rows > 0) {
    // output data of each row
    while($alirow = $resultalign->fetch_assoc()) {
        echo "Alignment: " . $alirow["align"]."<br>";
        $_SESSION['alignment'] = $alirow["align"];
    }
} else {
    echo "0 results";
}
$sqlmorality = "SELECT morality FROM morality order by RAND() LIMIT 1";
$resultmorality = $conn->query($sqlmorality);
if ($resultmorality->num_rows > 0) {
    // output data of each row
    while($moralityrow = $resultmorality->fetch_assoc()) {
        echo "Moral Development: " . $moralityrow["morality"]."<br><hr><br><h3>Personality:</h3><br>";
        $_SESSION['morality'] = $moralityrow["morality"];
    }
} else {
    echo "0 results";
}
$sqlgen = "SELECT generation FROM generation order by RAND() LIMIT 1";
$resultgen = $conn->query($sqlgen);
if ($resultgen->num_rows > 0) {
    // output data of each row
    while($genrow = $resultgen->fetch_assoc()) {
        echo "Generation: " . $genrow["generation"]."<br>";
        $_SESSION['generation'] = $genrow["generation"];
    }
} else {
    echo "0 results";
}
$sqlextroversion = "SELECT extroversion FROM Extraversion order by RAND() LIMIT 1";
$resultextroversion = $conn->query($sqlextroversion);
if ($resultextroversion->num_rows > 0) {
    // output data of each row
    while($extroversionrow = $resultextroversion->fetch_assoc()) {
        echo "Extroversion: " . $extroversionrow["extroversion"]."<br>";
        $_SESSION['extraversion'] = $extroversionrow["extroversion"];
    }
} else {
    echo "0 results";
}
$sqlsensing = "SELECT sensing FROM sensing order by RAND() LIMIT 1";
$resultsensing = $conn->query($sqlsensing);
if ($resultsensing->num_rows > 0) {
    // output data of each row
    while($sensingrow = $resultsensing->fetch_assoc()) {
        echo "Sensing Style: " . $sensingrow["sensing"]."<br>";
        $_SESSION['sensing'] = $sensingrow["sensing"];
    }
} else {
    echo "0 results";
}
$sqljudging = "SELECT judging FROM judging order by RAND() LIMIT 1";
$resultjudging = $conn->query($sqljudging);
if ($resultjudging->num_rows > 0) {
    // output data of each row
    while($judgingrow = $resultjudging->fetch_assoc()) {
        echo "Judging Style: " . $judgingrow["judging"]."<br>";
        $_SESSION['judging'] = $judgingrow["judging"];
    }
} else {
    echo "0 results";
}
$sqlplanning = "SELECT planning FROM planning order by RAND() LIMIT 1";
$resultplanning = $conn->query($sqlplanning);
if ($resultplanning->num_rows > 0) {
    // output data of each row
    while($planningrow = $resultplanning->fetch_assoc()) {
        echo "Planning Style: " . $planningrow["planning"]."<br>";
        $_SESSION['planning'] = $planningrow["planning"];
    }
} else {
    echo "0 results";
}
$sqlrumor = "SELECT rumor FROM ravrumor order by RAND() LIMIT 1";
$resultrumor = $conn->query($sqlrumor);
if ($resultrumor->num_rows > 0) {
    // output data of each row
    while($rumorrow = $resultrumor->fetch_assoc()) {
        echo "<hr><br><h3>Rumor:</h3><br> " . $rumorrow["rumor"]."<br>";
        $_SESSION['rumor'] = $rumorrow["rumor"];
    }
} else {
    echo "0 results";
}
require('formb.php');
// echo "<hr>".'goodbye!';
echo "<br><hr>";
echo '<h3>Sources and Description Info:</h3> </p><a href="https://en.wikipedia.org/wiki/Lawrence_Kohlberg%27s_stages_of_moral_development">Moral Development</a> - Lawrence Kohlberg\'s stages of moral development';
echo '<br><a href="https://en.wikipedia.org/wiki/Strauss-Howe_generational_theory">Generational Archetypes</a> - Relative age and personality, and how age groups relate with society';
echo '<br><a href="https://en.wikipedia.org/wiki/Myers-Briggs_Type_Indicator">Personality Type Indicator</a> - MBTI Personality Types';
echo '<br><a href="https://onlyontuesdays27.com/2018/11/27/100-plot-hooks-for-ravnica/">Ravnica Plot Hooks</a> - TuesdayTastic\'s D100 table of Ravnica plot hooks';
// echo 'Sources and Info: </p><a href="https://en.wikipedia.org/wiki/Lawrence_Kohlberg%27s_stages_of_moral_development">Moral Dvelopment</a></p><a href="https://en.wikipedia.org/wiki/Strauss%E2%80%93Howe_generational_theory#Archetypes">Generational Archetypes</a></p><a href="https://en.wikipedia.org/wiki/Myers%E2%80%93Briggs_Type_Indicator">Personality Type Indicator</a></p><a href="https://onlyontuesdays27.com/2018/11/27/100-plot-hooks-for-ravnica/>Ravnica Plot Hooks</a>';
// echo $charplan;
// echo "<hr>";
// echo $_SESSION["alignment"];
// echo 'Sources and Info:<br><a href="https://en.wikipedia.org/wiki/Lawrence_Kohlberg%27s_stages_of_moral_development">Moral Dvelopment</a><br><a href="https://en.wikipedia.org/wiki/Strauss%E2%80%93Howe_generational_theory#Archetypes">Generational Archetypes</a><br><a href="https://en.wikipedia.org/wiki/Myers%E2%80%93Briggs_Type_Indicator">Personality Type Indicator</a><br><a href="https://onlyontuesdays27.com/2018/11/27/100-plot-hooks-for-ravnica/>Ravnica Plot Hooks</a><br>';
// echo $charplan;
// echo "<hr>";
// echo $_SESSION["alignment"];
// 
?>

                    </div>
                                        
                </div>
            </div>
            
<?php get_sidebar();?> 
           
<?php get_footer();?>      
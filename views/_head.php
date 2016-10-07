<!DOCTYPE html>
<html>
<head>
	<meta charset='UTF-8'>
	<!-- Title and Tags-->
	<title><?=$this->data['title']?> - Soccer League</title>
	<link rel="icon" type="image/png" sizes="96x96" href="<?=$this->tree?>assets/img/icon2.png">
	<meta name="viewport" content="width=device-width"/>
	<meta name="description" content="Soccer Management Game" />
	<meta name="keywords" content="soccer, management, football, league, game, soccergame, soccerleague" />
	<meta name="author" content="SoccerLeague" />
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="<?=$this->tree?>assets/css/grid.css">
	<link rel="stylesheet" type="text/css" href="<?=$this->tree?>assets/semantic/dist/semantic.min.css">
	<link rel="stylesheet" type="text/css" href="<?=$this->tree?>assets/css/styles.css">
	<link rel="stylesheet" type="text/css" href="<?=$this->tree?>assets/css/header.css">
	<link rel="stylesheet" type="text/css" href="<?=$this->tree?>assets/css/fonts.css">
	<link rel="stylesheet" type="text/css" href="<?=$this->tree?>assets/css/icons.css">
	<?
	/*load css files*/
	$this->loadCSSFiles();
	/*starts account to get the timezone choosed by user*/
	$account=Account::getAccount($_SESSION['SL_account']);
	?>
	<script>
		var digital = new Date();
		digital.setHours(<?php echo Timezone::setTimezone(Timezone::getTimezone($account->timezone)); ?>);
	</script>
</head>
<body>
<!-- div that will receive and display alerts to users-->
<div id='alert' class='alert'></div>

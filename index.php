<? require_once('templates/top.php');
 if(isset($_GET['url'])){
	$url = $_GET['url']; 
 }else{
	 $url = 'index';
 }
 $query = "SELECT * FROM maintexts WHERE url='$url'";
 $adr = mysqli_query($dbconnect, $query);
 if(!$adr){
	 exit($query);
 }
 $tbl_maintext = mysqli_fetch_assoc($adr);
 // echo "<pre>";
 // print_r($tbl_maintext);
 // echo "</pre>";
?>
   <h2><?php echo $tbl_maintext['name']?></h2>
   <?php echo $tbl_maintext['body']?>
<? require_once('templates/bottom.php');?>
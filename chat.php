<?php

include 'db.php';

$query ="SELECT * FROM chat ORDER BY id DESC";

$run   = $db->query($query);

while($row= $run -> fetch_array()) :                               /*  ":" means breaking the while loop,we dont use brackets in PDO */
?>

<div id="chat_data">
<span style="color:green;"><?php echo $row['name'];?></span> :
<span style="color:brown;"><?php echo $row['msg'];?></span>  
<span style="float:right;"><?php echo formatDate($row['date']);?></span> <!-- using function date in db.php to just show time-->                                                                           
</div>                                                                                

<?php endwhile; ?>

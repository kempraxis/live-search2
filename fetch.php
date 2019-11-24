
<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "root", "phpcrud");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM crud 
  WHERE name LIKE '%".$search."%'
  OR email LIKE '%".$search."%' 
  OR phone LIKE '%".$search."%' 
  
  
 ";
}
else
{
 $query = "
  SELECT * FROM crud ORDER BY id
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table bordered">
    <tr>
     <th>Név</th>
     <th>E-mail cím</th>
     <th>Telefonszám</th>
     
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["name"].'</td>
    <td>'.$row["email"].'</td>
    <td>'.$row["phone"].'</td>
    
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Nincs ilyen név a nyilvántartásban!!';
}

?>
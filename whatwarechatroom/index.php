<?php include("config.php");include("login.php");?>
<!DOCTYPE html>
<html>
 <head>
  <script src="//code.jquery.com/jquery-latest.js"></script>
  <script src="chat.js"></script>
  <link href="chat.css" rel="stylesheet"/>
  <title>PHP Group Chat With jQuery & AJAX</title>
 </head>
 <body>
  <div id="content" style="margin-top:10px;height:100%;">
   <h1 id="groupchathead">Start Group Chat</h1>
   <div class="chat">
    <div class="users">
     <?php include("users.php");?>
    </div>
    <div class="chatbox">
     <?php
     if(isset($_SESSION['user'])){
      include("chatbox.php");
     }else{
      $display_case=true;
      include("login.php");
     }
     ?>
    </div>
   </div>
  </div>
 </body>
</html>

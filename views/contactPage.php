<?php include('includes/header.php'); ?>

<div id="content">
  
  <?php echo $page['text']; ?>
  
  <h3>Üzenetküldés:</h3>
  <form name="contactForm" method="post">
    <label>Név:</label>
    <br>
    <input type="text" name="contactName">
    <br>
    <label>E-mail cím:</label>
    <br>
    <input type="email" name="contactEmail">
    <br>
    <label>Üzenet:</label>
    <br>
    <textarea name="contactMessage"></textarea>
    <br>
    <input type="submit" name="contactSubmit">
  </form>

</div>

<?php
include('includes/footer.php');
<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?> 

<div class="ftco-footer ftco-section">
    <div class="container">
    <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
        <li class="nav-item"><a href="index.php" class="nav-link px-2 text-body-secondary">Inicio</a></li>
        <li class="nav-item"><a href="about.php" class="nav-link px-2 text-body-secondary">Nosotros</a></li>
        <li class="nav-item"><a href="index.php" class="nav-link px-2 text-body-secondary">Admin</a></li>
        <li class="nav-item"><a href="contact.php" class="nav-link px-2 text-body-secondary">Contacto</a></li>
        </ul>
        <div class="col">
            <div class="ftco-footer-widget mb-3">
            	<h2 class="ftco-heading-2">¿Tienes alguna pregunta?</h2>
            	<div class="block-23 mb-3">
                <?php
                      $ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
                      $cnt=1;
                      while ($row=mysqli_fetch_array($ret)) {
                ?>
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text"><?php  echo $row['PageDescription'];?></span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+<?php  echo $row['MobileNumber'];?></span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text"><?php  echo $row['Email'];?></span></a></li>
	              </ul>
	            </div>
               <?php } ?>
            </div>
          </div>
        <p class="text-center text-body-secondary">&copy; 2023 Company, Inc</p>
    </footer>
    </div>
</div>




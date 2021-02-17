<?php
$callerName = $_POST[ "callerName" ];
$contactNumber = $_POST[ "contactNumber" ];
$locationOfIncident = $_POST[ "locationOfIncident" ];
$typeOfIncident = $_POST[ "typeOfIncident" ];
$descriptionOfIncident = $_POST[ "descriptionOfIncident" ];

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Dispatch</title>
<link rel="stylesheet" href="css/bootstrap-4.4.1.css">
</head>

<body>
<div class="container" style="width:900px">
  <?php
  include "header.php";
  ?>
  <section class="mt-3">
    <form>
      <div class="form-group row">
        <label for="callerName" class="col-sm-4 col-form-label">Caller's Name</label>
        <div class="col-sm-8"> <span> <?php echo $callerName; ?>
          <input type="hidden" id="callerName" name="callerName" value="<?php echo $callerName; ?>">
          </span> </div>
      </div>
      <div class="form-group row">
        <label for="contactNumber" class="col-sm-4 col-form-label">Contact Number</label>
        <div class="col-sm-8"> <span> <?php echo $contactNumber; ?>
          <input type="hidden" id="contactNumber" name="contactNumber" value="<?php echo $contactNumber; ?>">
          </span> </div>
      </div>
      <div class="form-group row">
        <label for="locationOfIncident" class="col-sm-4 col-form-label">Location of Incident</label>
        <div class="col-sm-8"> <span> <? echo $locationOfIncident; ?>
          <input type="hidden" id="locationOfIncident" name="locationOfIncident" value="<? echo $locationOfIncident; ?>">
          </span> </div>
      </div>
      <div class="form-group row">
        <label for="typeOfIncident" class="col-sm-4 col-form-label">Type of Incident</label>
        <div class="col-sm-8"> <span> <? echo $typeOfIncident; ?>
          <input id="typeOfIncident"
		  type="hidden" name="typeOfIncident" value="<? echo $typeOfIncident; ?>">
          </span> </div>
      </div>
      <div class="form-group row">
        <label for="descriptionOfIncident" class="col-sm-4 col-form-label">Description of Incident</label>
        <div class="col-sm-8"> <span> <? echo $descriptionOfIncident; ?>
          <input name="descriptionOfIncident" id="descriptionOfIncident" type="hidden" value="<? echo $descriptionOfIncident; ?>">
          </span> </div>
      </div>
      <div class="form-group row">
      <label for="patrolCar" class="col-sm-4 col-form-label">Choose Patrol Car(s)</label>
      <div class="col-sm-8">
        <table class="table table-striped">
          <tbody>
            <tr>
              <th>Car Number</th>
              <th>Status</th>
              <th></th>
            </tr>
            <tr>
              <td>SJA667A</td>
              <td>Free</td>
              <td><input type="checkbox" name="cbCarSelection[]"></td>
            </tr>
            <tr>
              <td>SJE5564A</td>
              <td>Free</td>
              <td><input type="checkbox" name="cbCarSelection[]"></td>
            </tr>
            <tr>
              <td>SJE8764A</td>
              <td>Free</td>
              <td><input type="checkbox" name="cbCarSelection[]"></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="form-group row">
        <div class="offset-sm-4 col-sm-8">
          <button type="submit" class="btn btn-primary" name="submit" id="submit">Dispatch</button>
        </div>
      </div>
    </form>
  </section>
  <?php
  include "footer.php";
  ?>
</div>
<script src="js/jquery-3.4.1.min.js"></script> 
<script src="js/popper.min.js"></script> 
<script src="js/bootstrap-4.4.1.js"></script>
</body>
</html>

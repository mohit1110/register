<?php

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $server = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $database = "registerdb";

    $conn = mysqli_connect($server, $dbusername, $dbpassword, $database);

    if ($conn) {
        $firstname = $_POST["firstname"];
        $lastname = $_POST["lastname"];
        $email = $_POST["email"];
        $phone = $_POST["phone"];
        $password = $_POST["password"];

        $dob = $_POST["dob"];
        $gender = $_POST["gender"];
        $maritalstatus = $_POST["maritalstatus"];
        $address = $_POST["address"];
        $country = $_POST["country"];
        $state = $_POST["state"];
        $city = $_POST["city"];
        $zipcode = $_POST["zipcode"];

        $highereducation = $_POST["highereducation"];
        $university = $_POST["university"];
        $workstatus = $_POST["workstatus"];

        $resumeheadline = $_POST["resumeheadline"];
        $keyskills = $_POST["keyskills"];
        $currentctc = $_POST["currentctc"];
        $about = $_POST["about"];

        $filename = "upload/" . basename($_FILES["resumeupload"]["name"]);
        move_uploaded_file($_FILES["resumeupload"]["tmp_name"], $filename);

        $sql = "INSERT INTO `register`(`FirstName`, `LastName`, `Email`, `Phone`, `Password`, `Dob`, `Gender`, `MaritalStatus`, `HigherEducation`, `University`, `WorkStatus`, `ResumeHeadline`, `KeySkills`, `CurrentCtc`, `About`, `ResumeFileLink`) VALUES ('$firstname','$lastname','$email','$phone','$password','$dob','$gender','$maritalstatus','$highereducation','$university','$workstatus','$resumeheadline','$keyskills','$currentctc','$about','$filename')";
        mysqli_query($conn, $sql);
        $last_inserted_id = mysqli_insert_id($conn);

        $sql = "INSERT INTO `addresstable`(`Id`, `Address`, `Country`, `State`, `City`, `Zipcode`) VALUES ('$last_inserted_id','$address','$country','$state','$city','$zipcode')";
        mysqli_query($conn, $sql);

        if ($workstatus == "experienced") {
            $totalexpyears = $_POST["totalexpyears"];
            $totalexpmonths = $_POST["totalexpmonths"];

            $sql = "UPDATE `register` SET `ExperienceYears`='$totalexpyears',`ExperienceMonths`='$totalexpmonths' WHERE Id=$last_inserted_id";
            mysqli_query($conn, $sql);

            $worknumber = $_POST["worknumber"];

            for ($i = 1; $i <= $worknumber; $i++) {
                $organization = $_POST["work" . $i . "_organization"];
                $startdate = $_POST["work" . $i . "_organization_start"];
                $enddate = $_POST["work" . $i . "_organization_end"];
                $position = $_POST["work" . $i . "_organization_position"];

                $sql = "INSERT INTO `experiencetable`(`Id`, `OrganizationName`, `StartDate`, `EndDate`, `PositionName`) VALUES ('$last_inserted_id','$organization','$startdate','$enddate','$position')";
                mysqli_query($conn, $sql);
            }
        }
    }
    mysqli_close($conn);
}




?>
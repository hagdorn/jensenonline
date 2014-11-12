<?php

class HagdornHash {

    private $db = "";

    function __construct($userName, $pwd)
    {
        try {
            //Nytt PDO objekt med Databastyp+sökväg+namn , användarnamn, lösenord,
            $this -> db = new PDO("mysql:dbname=120949-jensenonline;host=mysql14.citynetwork.se:3306", $userName, $pwd);
            //var_dump($db);
        }
        catch (Exception $exception) {
            echo ("problemma connecta <br>" .$exception);
        }
    }

    function isUserPasswordCorrect($userName, $pwd){
        try {
            $result = $this -> db -> query("SELECT * FROM useraccounts ORDER BY ID ASC");
        }
        catch (Exception $exception){
            echo ("Error " .$exception);
        }

        while ($row = $result->fetch()){
            if($row["username"] == $userName && $row["password"] == $pwd) {
                return 1;
            }
        }
        return 0;
    }

    function addUser($userName, $pwd){

        $insert = $this -> db ->query("INSERT INTO useraccounts (username, password) VALUES('$userName', '$pwd')");


    }

    function passwordEncrypt($userName, $pwd){

        while (sizeof(str_split($pwd)) < 30){
            $pwd = $pwd . $pwd;
        }

        $encPwd = "";
        $pwd = str_split($pwd);
        $userName = str_split($userName);

        $uc = (ord($userName[0]));
        $pc = (ord($pwd[0])) + 50 - $uc;

        foreach($pwd as $char){

            $chrCode = (ord($char) * $uc * sizeof($pwd));
            $chrCode = $this -> checkAndFixCharCode($chrCode);
            $encPwd = $encPwd . chr($chrCode);

            $chrCode = $chrCode + $pc - sizeof($userName);
            $chrCode = $this -> checkAndFixCharCode($chrCode);
            $encPwd = $encPwd . chr($chrCode);

            $chrCode =  $chrCode + $uc + $pc;
            $chrCode = $this -> checkAndFixCharCode($chrCode);
            $encPwd = $encPwd . chr($chrCode);
            $uc += sizeof($pwd);
            $pc += sizeof($userName);
        }
        return $encPwd;
    }

    function checkAndFixCharCode($chrCode){ 
        while($chrCode > 254 || $chrCode < 33 || $chrCode == 92){
            if ($chrCode > 255){
                $chrCode -= 200;
            }
            else{
                $chrCode += 10;
            }
        }
        return $chrCode;
    }
	
	function testPrintAll(){//Denna funtion ska bort.
        try {
            $result = $this -> db -> query("SELECT * FROM useraccounts ORDER BY ID ASC");
        }
        catch (Exception $exception){
            echo ("Error " .$exception);
        }

        while ($row = $result->fetch()){
		echo("<div>Username: " .$row['username'] . "<br> Password: " . $row['password'] . "</div><br>");
        }
}
}



?>
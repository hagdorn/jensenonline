<?php
class Hash {
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

}
?>
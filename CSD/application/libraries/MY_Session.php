<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/9/16
 * Time: 10:23 PM
 */

class MY_Session extends CI_Session {


    function sess_update() {

        // Listen to HTTP_X_REQUESTED_WITH
        if (isset($_SESSION["HTTP_X_REQUESTED_WITH"]) && $_SESSION["HTTP_X_REQUESTED_WITH"] !== "XMLHttpRequest") {
            parent::sess_update();
        }
    }


}
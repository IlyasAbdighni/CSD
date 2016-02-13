<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/6/16
 * Time: 10:51 AM
 */
class User_m extends MY_Model {

    protected $_table_name = "internaluser";
    protected $_primary_key = "idInternalUser";
    protected $_order_by = "idInternalUser";
    public $rules = array(
        "email" => array(
            "field" => "email",
            "label" => "email",
            "rules" => "trim|required|valid_email",
        ),
        "password" => array(
            "field" => "password",
            "label" => "password",
            "rules" => "trim|required",
        ),
    );

    public $rules_add_user = array(
        "name" => array(
            "field" => "name",
            "label" => "name",
            "rules" => "trim|required",
        ),
        "email" => array(
            "field" => "email",
            "label" => "email",
            "rules" => "trim|required|valid_email|callback__unique_email",
        ),
        "password" => array(
            "field" => "password",
            "label" => "password",
            "rules" => "trim|matches[password_confirm]",
        ),
        "password_confirm" => array(
            "field" => "password_confirm",
            "label" => "Confirm password",
            "rules" => "trim|matches[password]",
        ),
    );

    public function __construct()
    {
        parent::__construct();
    }

    public function login () {

        $user = $this->get_by(array(
            "InternalUserEmail" => $this->input->post("email"),
            "InternalUserPassword" => $this->hash($this->input->post("password")),
        ), true);

        if (count($user)) {
            // log in user
            $data = array(
                "name" => $user->InternalUserName,
                "email" => $user->InternalUserEmail,
                "id" => $user->idInternalUser,
                "user_type" => $user->InternalUserType_idInternalUserType,
                "block_status" => $user->StatusBlockUser,
                "loggedin" => true,
            );
            $this->session->set_userdata($data);
        }
        else {

        }

    }

    public function get_new() {
        $user = new stdClass();
        $user->InternalUserName = "";
        $user->InternalUserEmail = "";
        $user->InternalUserPassword = "";
        $user->StatusBlockUser = 0;
        return $user;

    }

    public function logout () {
        $this->session->sess_destroy();
    }

    public function loggedin () {
        return (bool) $this->session->userdata("loggedin");
    }

    public function hash ($string) {
        return md5($string);
    }



}

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

    public $front_rules = array(
        "register" => array(
            "name" => array(
                "field" => "name",
                "label" => "User name",
                "rules" => "trim|required|min_length[6]|callback__unique_name",
            ),
            "email" => array(
                "field" => "email",
                "label" => "Email",
                "rules" => "trim|required|valid_email|callback__unique_email",
            ),
            "password" => array(
                "field" => "password",
                "label" => "password",
                "rules" => "trim|required|md5",
            ),
            "password_confirm" => array(
                "field" => "password_confirm",
                "label" => "password confirm",
                "rules" => "trim|matches[password]",
            ),
        ),
        "user_profile" => array(
            "email" => array(
                "field" => "email",
                "label" => "email",
                "rules" => "trim|required|valid_email|callback__unique_slug",
            ),
            "password" => array(
                "field" => "slug",
                "label" => "Slug",
                "rules" => "trim|required|matches[password_confirm]",
            ),
            "password_confirm" => array(
                "field" => "template",
                "label" => "Template",
                "rules" => "trim|matches[password]",
            ),
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


    public function insert_user()
    {
        $data = array();
        $data["InternalUserName"] = $this->input->post(e("name"));
        $data["InternalUserEmail"] = $this->input->post(e("email"));
        $data["InternalUserPassword"] = $this->input->post(e("password"));

        $id = $this->save($data);
        if ($id) {
            return true;
        }
        else {
            return false;
        }
    }



}

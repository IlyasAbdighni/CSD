<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/6/16
 * Time: 8:56 AM
 */

class Login_m extends MY_Model {

    protected $_table_name = "internaluser";
    protected $_primary_key = "idInternaluser";
    protected $_order_by = "idInternaluser";
    public $rules = array(
        "login" => array(
            "email" => array(
                "field" => "email",
                "label" => "email",
                "rules" => "trim|required|valid_email",
            ),
            "password" => array(
                "field" => "slug",
                "label" => "Slug",
                "rules" => "trim|required|max_length[100]|url_title|callback__unique_slug",
            ),
        ),
        "register" => array(
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

    public function get_new() {
        $page = new stdClass();
        $page->title = "";
        $page->slug = "";
        $page->parent_id = "";
        $page->template = "page";
        $page->body = "";
        return $page;

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




    public function delete($id){
        // delete a page
        parent::delete($id);


    }









}

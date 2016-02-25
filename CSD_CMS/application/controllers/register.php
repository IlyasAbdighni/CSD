<?php

/**
 *
 */
class Register extends Frontend_controller
{

    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->data["subview"] = "register";
        $this->load->view("_main_layout", $this->data);
    }



    public function reg_user()
    {
        $data = array();

        $rules = $this->user_m->front_rules["register"];

        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == true) {
            $result = $this->user_m->insert_user();
            if ($result) {
                $this->data["subview"] = "reg_success";
                $this->load->view("_main_layout", $this->data);
            }
            else {
                echo "There is something wrong with the system when creating user. please contact udunig@hotmail.com.";
            }
        }
        else {
            $this->data["subview"] = "register";
            $this->load->view("_main_layout", $this->data);
        }


    }




    public function _unique_email($str) {


        // Do NOT validate if email already exists
        // UNLESS it's the eamil for the current user


        $this->db->where("InternalUserEmail", $this->input->post("email"));
        $user = $this->user_m->get();

        if(count($user)) {
            $this->form_validation->set_message("_unique_email", "%s already exists, choose another email.");
            return false;
        }

        return true;
    }



    public function _unique_name($str) {


        // Do NOT validate if email already exists
        // UNLESS it's the eamil for the current user


        $this->db->where("InternalUserName", $this->input->post("name"));
        $user = $this->user_m->get();
        

        if(count($user)) {
            $this->form_validation->set_message("_unique_name", "%s already exists, choose another name.");
            return false;
        }

        return true;
    }




}


 ?>

<?php

/**
 *
 */
class Login extends Frontend_controller
{

    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {

        $this->data["subview"] = "login";

        $this->load->view("_main_layout", $this->data);



    }




    public function login() {


        $data = array();

        $rules = $this->user_m->rules;

        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == true) {
            $result = $this->user_m->login();
            if ($this->user_m->loggedin() == true) {
                if (isset($this->session->userdata["last_page"])) {
                    $redirect = $this->session->userdata["last_page"];
                    redirect($redirect);
                }
                else {
                    redirect(site_url("front_user"));
                }

            }
            else {
                $this->session->set_flashdata("error", "<p class='error'>This email/password combination doesn't exist</p>");
                redirect("login");
            }
        }
        else {
            $this->data["subview"] = "login";
            $this->load->view("_main_layout", $this->data);
        }

        // Redirect user if he is already logged in
        // $userboard = base_url("front_user/index");
        // $this->user_m->loggedin() == false || redirect($userboard);
        //
        // // set form
        // $rules = $this->user_m->rules;
        // $this->form_validation->set_rules($rules);
        //
        //
        // // Process the form
        // if ($this->form_validation->run() == true) {
        //     // we can login and redirect
        //     $this->user_m->login();
        //     if ($this->user_m->loggedin() == true) {
        //         redirect($userboard);
        //
        //     }
        //     else {
        //         $this->session->set_flashdata("error", "<p class='error'>This email/password combination doesn't exist</p>");
        //         redirect("login");
        //         // $this->load->view("login");
        //         // $this->load->view('_main_layout', $this->data);
        //
        //     }
        // }
        // else{
        //     redirect("login");
        // }
        // $this->load->view('_main_layout', $this->data);
        //$this->data["subview"] = "admin/user/login";

    }




}


 ?>

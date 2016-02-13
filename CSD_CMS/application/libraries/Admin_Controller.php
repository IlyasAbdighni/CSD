<?php

    class Admin_Controller extends MY_Controller {

        function __construct()
        {
            parent::__construct();
            $this->data["meta_title"] = "CSD Dashboard";
            $this->load->helper("form");
            $this->load->library("form_validation");
            $this->load->library("session");
            $this->load->model("user_m");

            // check login
            $exeption_uris = array(
                "admin/user/login",
                "admin/user/logout",
            );

            if (in_array(uri_string(), $exeption_uris) == false) {
                if ($this->user_m->loggedin() == false) {
                    redirect(base_url("admin/user/login"));
                }
            }

        }




    }
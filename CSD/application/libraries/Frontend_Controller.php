<?php

class Frontend_Controller extends MY_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->helper("form");
        $this->load->library("form_validation");
        $this->load->library("session");
        $this->load->model("user_m");
        $this->load->model("page_m");

        $this->data["menu"] = $this->page_m->get_nested();
    }



}

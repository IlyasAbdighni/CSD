<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 1/23/16
 * Time: 10:53 PM
 */



    class Dashboard extends Admin_Controller {


        public function __construct()
        {
            parent::__construct();
        }

        public function index() {
            $this->data["subview"] = "admin/dashboard/index";
            $this->load->view("admin/_layout_main", $this->data);
            //echo base_url("bootstrap/css/bootstrap.min.css");
        }
        public function modal() {
            $this->load->view("admin/_layout_modal", $this->data);
        }

    }

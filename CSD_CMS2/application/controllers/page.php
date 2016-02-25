<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/6/16
 * Time: 8:58 AM
 */

class Page extends Frontend_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model("page_m");
    }

    public function index() {

        $this->load->model("home_m");
        $this->data["universities"] = $this->home_m->get_new_univeristy();
        $this->data["subview"] = "home";
        $this->load->view("_main_layout", $this->data);


    }


    private function _page() {

    }


    private function _home() {



    }


    private function _universities() {

    }


    private function _about() {

    }


    private function _login() {
        $this->user_m->login();
    }


    private function _register() {

    }

}

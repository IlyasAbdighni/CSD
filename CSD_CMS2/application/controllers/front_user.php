<?php

    class Front_user extends Frontend_Controller {

        public function __construct()
        {
            parent::__construct();
        }


        /**
         *
         */
        public function index() {

            // load view
            $this->data["contributions"] = $this->get_user_contributions();

            $this->data["subview"] = "front_user/index";



            $this->load->view("_main_layout", $this->data);
        }



        public function get_user_contributions()
        {
            $this->db->select("history.TimeSubmit as submit_time, history.Status_idStatus as status, history.Record_University_idUniversity as university_id, university.UniversityName as university_name");
            $this->db->from("history");
            $this->db->join("university", "history.Record_University_idUniversity=university.idUniversity");
            $this->db->where("history.InternalUser_idInternalUser", $this->session->userdata["id"]);
            $results = $this->db->get()->result_array();

            return $results;
        }





        public function delete($id) {
            $this->user_m->delete($id);
            redirect(base_url("admin/user"));
        }


        // user login
        public function login() {


            // Redirect user if he is already logged in
            $userpanel = base_url("front_user/index");
            $this->user_m->loggedin() == false || redirect($userpanel);

            // set form
            $rules = $this->user_m->rules;
            $this->form_validation->set_rules($rules);


            // Process the form
            if ($this->form_validation->run() == true) {
                // we can login an redirect
                $this->user_m->login();
                if ($this->user_m->loggedin() == true) {
                    redirect($userpanel);
                }
                else {
                    $this->session->set_flashdata("error", "This email/password combination doesn't exist");
                    $this->load->view("templates/login", $this->data);
                }
            }
            else {
                $this->data["subview"] = "login";
                $this->load->view("_main_layout", $this->data);
            }
            //$this->data["subview"] = "admin/user/login";
        }




        public function logout() {
            $this->user_m->logout();
            redirect(base_url("front_user/login"));
        }





        public function _unique_email($str) {


            // Do NOT validate if email already exists
            // UNLESS it's the eamil for the current user


            $id = $this->uri->segment(4);
            $this->db->where("InternalUserEmail", $this->input->post("email"));
            $this->db->where("idInternalUser !=", $id);
            $user = $this->user_m->get();

            if(count($user)) {
                $this->form_validation->set_message("_unique_email", "%s already exists, choose another email.");
                return false;
            }

            return true;
        }

    }



?>

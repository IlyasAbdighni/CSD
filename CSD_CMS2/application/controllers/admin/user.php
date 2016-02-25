<?php

    class User extends Admin_Controller {

        public function __construct()
        {
            parent::__construct();
        }


        /**
         *
         */
        public function index() {

            $user_type = $this->session->userdata("user_type");


            // decide whick type of user
            switch ($user_type) {
                case SUPER_ADMIN:

                    // fetch all users
                    $this->data["users"] = $this->user_m->get();

                    // load view
                    $this->data["subview"] = "admin/user/index";
                    break;
                case ADMIN:

                    // fetch users where user_type = 0
                    $this->data["users"] = $this->user_m->get_by("InternalUserType_idInternalUserType = 0");
                    // load view
                    $this->data["subview"] = "admin/user/index";
                    break;
                case USER:
                    die("You do not have authority!");
                    break;
                default:
                    $this->data["users"] = null;

            }



            $this->load->view("admin/_layout_main", $this->data);
        }



        public function edit($id = null) {


            // set a user or set a new user
            if ($id) {
                $this->data["user"] = $this->user_m->get($id);
                count($this->data["user"]) || $this->data["errors"][] = "User could not be found";
            }
            else {
                $this->data["user"] = $this->user_m->get_new();
            }


            // set up the form
            $rules = $this->user_m->rules_add_user;
            $id || $rules["password"]["rules"] .= "|required";
            $this->form_validation->set_rules($rules);


            // process the form
            if ($this->form_validation->run() == true) {

                $user_data = array();

                $data = $this->user_m->array_from_post(array("name", "email", "password", "user_block_status"));
                $user_data["InternalUserName"] = $data["name"];
                $user_data["InternalUserEmail"] = $data["email"];
                $user_data["StatusBlockUser"] = $data["user_block_status"];
                $user_data["InternalUserPassword"] = $this->user_m->hash($data["password"]);

                $this->user_m->save($user_data, $id);
                redirect(site_url("admin/user"));
            }

            $this->data["subview"] = "admin/user/edit";
            $this->load->view("admin/_layout_main", $this->data);
        }



        public function delete($id) {
            $this->user_m->delete($id);
            redirect(base_url("admin/user"));
        }


        // user login
        public function login() {


            // Redirect user if he is already logged in
            $dashboard = base_url("admin/dashboard");
            $this->user_m->loggedin() == false || redirect($dashboard);

            // set form
            $rules = $this->user_m->rules;
            $this->form_validation->set_rules($rules);


            // Process the form
            if ($this->form_validation->run() == true) {
                // we can login and redirect
                $this->user_m->login();
                if ($this->user_m->loggedin() == true) {
                    redirect($dashboard);
                }
                else {
                    $this->session->set_flashdata("error", "This email/password combination doesn't exist");
                    // $this->load->view("admin/user/login");
                    // redirect(base_url("admin/user/logout"), "refresh");
                }
            }
            //$this->data["subview"] = "admin/user/login";
            $this->load->view("admin/user/login", $this->data);
        }




        public function logout() {
            $this->user_m->logout();
            redirect(base_url("admin/user/login"));
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

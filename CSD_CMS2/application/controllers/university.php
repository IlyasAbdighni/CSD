<?php

    class University extends Frontend_controller {

        public function __construct()
        {
            parent::__construct();
            $this->load->model('university_m');
        }


        /**
         *
         */
        public function index() {

            // fetch all univeristys
            //$this->data["university"] = $this->univeristy_m->get();

            // load view
            $this->data["universities"] = $this->view_all();
            $this->data["subview"] = "page";



            $this->load->view("_main_layout", $this->data);
        }






        public function edit($id = null) {

            $loggedin = $this->session->userdata("loggedin");
            $id = $this->uri->segment(3);
            $data = array();
            $content = array();
            $record = array();
            $category = array();

            if ($loggedin) {
                $university = $this->university_m->get_by(array("idUniversity" => $id), true);

                $this->data["university"] = $university;
                $this->data["content"] = $this->get_content($id);

                $rules = $this->university_m->rules;
                $this->form_validation->set_rules($rules);


                // process the form
                if ($this->form_validation->run() == true) {

                    $now = date("Y-m-d H:i:s");

                    $data["UniversityName"] = e($this->input->post("name"));
                    $data["UniversityAddress"] = e($this->input->post("address"));
                    $data["UniversityPhoneNumber"] = e($this->input->post("phone"));
                    $data["UniversityLogoURL"] = e($this->input->post("logo"));
                    $data["UniversityWebsite"] = e($this->input->post("website"));
                    $data["modified"] = $now;
                    $this->university_m->save($data, $id);

                    $i = 1;
                    while ($i <= 4) {
                        if ($this->input->post($i)) {
                            $record["University_idUniversity"] = $id;
                            $record["Catagory_idCatagory"] = $i;
                            $this->db->insert("record", $record);
                            $record_id = $this->db->insert_id();

                            $where = array(
                                "Status_idStatus" =>   WAITING,
                                "Record_idRecord" => $record_id,
                                "Record_University_idUniversity" => $id,
                                "Record_Catagory_idCatagory" => $i,
                                "InternalUser_idInternalUser" => $this->session->userdata["id"],
                                "InternalUser_InternalUserType_idInternalUserType" => $this->session->userdata["user_type"],
                            );
                            $this->db->insert("history", $where);
                            $history_id = $this->db->insert_id();

                            $content_data = array(
                                "ContentDescription" => e($this->input->post($i)),
                                "History_idHistoty" => $history_id,
                            );
                            $this->db->insert("content", $content_data);

                        }

                        $i += 1;
                    }



                    // $this->data["subview"] = "university";
                    // $this->load->view('_main_layout', $this->data);
                    redirect(site_url("university/view/")."/".$id);
                }

                $this->data["subview"] = "university/edit";
                $this->load->view('_main_layout', $this->data);
            }
            else {
                $this->session->set_userdata("last_page", current_url());
                redirect(site_url("login"));
            }




        }


        public function add()
        {
            $loggedin = $this->session->userdata("loggedin");
            $data = array();
            $content = array();

            if ($loggedin) {

                $rules = $this->university_m->rules;
                $this->form_validation->set_rules($rules);


                // process the form
                if ($this->form_validation->run() == true) {

                    $now = date("Y-m-d H:i:s");

                    $data["UniversityName"] = $this->input->post("name");
                    $data["UniversityAddress"] = $this->input->post("address");
                    $data["UniversityPhoneNumber"] = $this->input->post("phone");
                    $data["UniversityLogoURL"] = $this->input->post("logo");
                    $data["UniversityWebsite"] = $this->input->post("website");
                    $data["modified"] = $now;
                    $this->university_m->save($data);

                    $i = 1;
                    while ($i <= 4) {
                        if ($this->input->post($i)) {
                            $record["University_idUniversity"] = $id;
                            $record["Catagory_idCatagory"] = $i;
                            $this->db->insert("record", $record);
                            $record_id = $this->db->insert_id();

                            $where = array(
                                "Status_idStatus" =>   WAITING,
                                "Record_idRecord" => $record_id,
                                "Record_University_idUniversity" => $id,
                                "Record_Catagory_idCatagory" => $i,
                                "InternalUser_idInternalUser" => $this->session->userdata["id"],
                                "InternalUser_InternalUserType_idInternalUserType" => $this->session->userdata["user_type"],
                            );
                            $this->db->insert("history", $where);
                            $history_id = $this->db->insert_id();

                            $content_data = array(
                                "ContentDescription" => e($this->input->post($i)),
                                "History_idHistoty" => $history_id,
                            );
                            $this->db->insert("content", $content_data);

                        }

                        $i += 1;
                    }

                    // $this->data["subview"] = "university";
                    // $this->load->view('_main_layout', $this->data);
                    redirect(site_url("university"));
                }

                $this->data["subview"] = "university/add";
                $this->load->view('_main_layout', $this->data);
            }
            else {
                $this->session->set_userdata("last_page", current_url());
                redirect(site_url("login"));
            }
        }





        public function delete($id) {
            $this->univeristy_m->delete($id);
            redirect(base_url("templates/univeristy"));
        }



        public function view()
        {
            $id = $this->uri->segment(3);
            $data = array();

            // $university = $this->db->get("university");
            $university = $this->university_m->get_by(array("idUniversity" => $id), true);

            if (count($university)) {
                $this->data["university"] = $university;
                $this->data["content"] = $this->get_content($id);
            }
            else {
                $this->data["errors"] = "there is no university found.";
            }

            $this->data["subview"] = "university/view";
            $this->load->view('_main_layout', $this->data);

        }



        public function view_all()
        {
            $data = array();
            $count = $this->db->count_all_results("university");

            $config = array();

            $per_pate = 12;
            $offset = $this->uri->segment(3) ? $this->uri->segment(3) : 0;

            if ($count > 10) {
                $config["base_url"] = site_url() . "university/view_all";

                $this->db->from('university');
                // $this->db->where('Status_idStatus', 0);
                $total_row = $this->db->get()->num_rows();
                // $total_row = $this->db->count_all("history");
                $config["total_rows"] = $total_row;
                $config["per_page"] = $per_pate;
                $config['num_links'] = 3;
                $config['uri_segment'] = 3;
                $config['next_link'] = 'Next';
                $config['prev_link'] = 'Previous';



                $this->pagination->initialize($config);
                $str_links = $this->pagination->create_links();

                $data["links"] = explode('&nbsp;',$str_links );
            }

            $data["universities"] = $this->universities($per_pate, $offset);

            return $data;
        }



        public function universities($per_page=12, $offset)
        {
            $this->db->order_by("idUniversity", "DESC");
            $this->db->limit($per_page, $offset);
            $results = $this->db->get("university")->result_array();

            if(count($results))
            {
                return $results;
            }
            else
            {
                return false;
            }

        }



        public function get_content($id)
        {
            $data = array();

            $data["before"] = $this->get_category($id, BEFORE_ARR);
            $data["after"] = $this->get_category($id, AFTER_ARR);
            $data["scholarship"] = $this->get_category($id, SCHOLARSHIP);
            $data["info"] = $this->get_category($id, UNIVERISITY_INFO);



            return $data;
        }


        public function get_category($id, $category_type)
        {
            $data = array();

            $this->db->select("*");
            $this->db->from("history");
            $this->db->join("content", "history.idHistoty = content.History_idHistoty");
            $this->db->where("Record_University_idUniversity", $id);
            $this->db->where("Status_idStatus", APPROVED);
            $this->db->where("Record_Catagory_idCatagory", $category_type);
            $this->db->order_by("idHistoty", "DESC");
            $results = $this->db->get();

            if ($results->num_rows() > 0) {
                $results = $results->row();
            }
            else {
                return false;
            }

            return $results;
        }




    }


?>

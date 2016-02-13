<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/11/16
 * Time: 10:26 AM
 */

class Record extends Admin_Controller {

    public $record_content = array();


    public function __construct()
    {
        parent::__construct();
        $this->load->library("pagination");
    }



    public function index() {

        if ($this->input->post()) {
            $posts = $this->input->post();
            $status = (int)$posts["status-options"];
            $id = (int) $posts["id"];
            // dump($status);
            $this->set_status($status, $id);

        }


        $results = $this->get_list();
        $this->data["links"] = $results["links"];
        $this->data["records"] = $results["records"];
        $this->record_content = $results["records"];

        $this->data["subview"] = "admin/record/index";

        $this->load->view("admin/_layout_main", $this->data);


    }


    public function set_status($status, $id)
    {
        $data = array("Status_idStatus" => $status);
        $this->db->where("idHistoty", $id);
        $this->db->update("history", $data);

    }



    public function approved()
    {
        $results = $this->get_list(1, "approved");
        $this->data["links"] = $results["links"];
        $this->data["records"] = $results["records"];

        $this->data["subview"] = "admin/record/approved";

        $this->load->view("admin/_layout_main", $this->data);
    }


    public function rejected()
    {
        $results = $this->get_list(0, "rejected");
        $this->data["links"] = $results["links"];
        $this->data["records"] = $results["records"];

        $this->data["subview"] = "admin/record/rejected";

        $this->load->view("admin/_layout_main", $this->data);
    }


    public function waiting()
    {
        $results = $this->get_list(2, "waiting");
        $this->data["links"] = $results["links"];
        $this->data["records"] = $results["records"];

        $this->data["subview"] = "admin/record/waiting";

        $this->load->view("admin/_layout_main", $this->data);
    }


    public function get_list($status="all", $param = "index")
    {

        $data = array();

        $config = array();
        $config["base_url"] = site_url() . "admin/record/$param";

        $this->db->from('history');
        !is_numeric($status) || $this->db->where("history.Status_idStatus", $status);
        // $this->db->where('Status_idStatus', 0);
        $total_row = $this->db->get()->num_rows();
        // $total_row = $this->db->count_all("history");
        $config["total_rows"] = $total_row;
        $config["per_page"] = 10;
        $config['use_page_numbers'] = TRUE;
        // $config['page_query_string'] = TRUE;
        $config['num_links'] = 3;
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Previous';

        if ($this->uri->segment(4)) {
            $page = $this->uri->segment(4);
        }
        else {
            $page = 1;
        }

        $this->pagination->initialize($config);
        $str_links = $this->pagination->create_links();

        $data["links"] = explode('&nbsp;',$str_links );

        $data["records"] = $this->get_records($config["per_page"], $page, $status);

        return $data;


    }



    public function get_records($per_page, $offset, $status = "all")
    {

        $records = array();


        $this->db->select('history.idHistoty as id, history.Record_idRecord as record_id, history.Record_University_idUniversity as university_id, history.InternalUser_idInternalUser as user_id, history.TimeSubmit as submit_time, history.Status_idStatus as status');
        $this->db->from('history');
        // $this->db->join('internaluser user', 'history.InternalUser_idInternalUser=user.idInternalUser', 'left');
        // $this->db->join('record', 'record.idRecord=history.Record_idRecord', 'left');

        !is_numeric($status) || $this->db->where("history.Status_idStatus", $status);
        // $id || $this->db->where("history.Record_idRecord", $id);
        $this->db->order_by('history.idHistoty','DESC');

        $offset == 1 || $offset = (--$offset) * 10;
        // $offset = 1;
        $this->db->limit($per_page, $offset);
        $results = $this->db->get();

        if($results->num_rows() != 0)
        {
            foreach ($results->result_array() as $result) {
                $university_id =  $result["university_id"];
                $this->db->select("UniversityName");
                $this->db->from("university");
                $this->db->where("idUniversity", $university_id);
                $university = $this->db->get();
                if($university->num_rows() != 0) {
                    $records[] = array(
                        "university" => $university->row()->UniversityName,
                        "user_id" => $result["user_id"],
                        "submit_time" => $result["submit_time"],
                        "status" => $result["status"],
                        "history_id" => $result["id"],
                    );
                }
            };
        }
        else
        {
            return false;
        }

        return $records;

    }




    public function view()
    {

        $record = array();

        $id = (int)$this->uri->segment(4);


        $this->db->select("idHistoty as id, TimeSubmit as submit_time, Status_idStatus as status, Record_idRecord as record_id, Record_University_idUniversity as university_id, Record_Catagory_idCatagory as category_id, InternalUser_idInternalUser as user_id");
        $this->db->from("history");
        $this->db->where('history.idHistoty', $id);
        $this->db->limit(1);
        $result = $this->db->get()->result_array();
        $record = $result[0];

        $univeristy_id = $result[0]["university_id"];
        $this->db->select("UniversityName as university_name");
        $this->db->from("university");
        $this->db->where("idUniversity", $univeristy_id);
        $univeristy = $this->db->get()->result_array()[0];
        $record["university_name"] = $univeristy["university_name"];

        $this->db->select("ContentDescription as content");
        $this->db->where('History_idHistoty', $id);
        $record_content = $this->db->get("content")->result_array();
        if (count($record_content)) {
            $record["record_content"] = $record_content[0]["content"];
        }
        else {
            $record["record_content"] = " ";

        }


        // $this->data["records"] = $result;
        $this->data["record"] = $record;

        $this->data["subview"] = "admin/record/view";

        $this->load->view("admin/_layout_main", $this->data);
    }


}

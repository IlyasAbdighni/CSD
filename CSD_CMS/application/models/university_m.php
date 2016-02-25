<?php

/**
*
*/
class University_m extends MY_Model
{

	protected $_table_name = "university";
    protected $_primary_key = "idUniversity";
    protected $_order_by = "UniversityName";
    protected $_timestamps = true;

    public $rules = array(
        "name" => array(
            "field" => "name",
            "label" => "university name",
            "rules" => "trim|required|callback_unique_university_name",
        ),
        "website" => array(
            "field" => "website",
            "label" => "university webstie url",
            "rules" => "trim|required",
        ),
        "logo" => array(
            "field" => "logo",
            "label" => "university logo url",
            "rules" => "trim",
        ),
        "address" => array(
            "field" => "address",
            "label" => "University Address",
            "rules" => "trim|required",
        ),
        "phone" => array(
            "field" => "phone",
            "label" => "university phone number",
            "rules" => "trim|required",
        ),
    );

    public $rules_edit = array(
        '1' => array(
            "field" => '1',
            "label" => "university info",
            "rules" => "trim",
        ),
        '2' => array(
            "field" => '2',
            "label" => "before arrival",
            "rules" => "trim",
        ),
        '3' => array(
            "field" => '3',
            "label" => "after arrival",
            "rules" => "trim",
        ),
        '4' => array(
            "field" => '4',
            "label" => "scholarship",
            "rules" => "trim",
        ),
    );

	public function get_new() {
		$data = array();
		$content = array();

        $university = new stdClass();
        $content["info"] = new stdClass();
        $content["before"] = new stdClass();
        $content["after"] = new stdClass();
        $content["scholarship"] = new stdClass();


        $university->UniversityName = "";
        $university->UniversityAddress = "";
        $university->UniversityPhoneNumber = "";
        $university->UniversityWebsite = "";
        $university->UniversityLogoURL = "";

        $content["info"]->ContentDescription = "";
        $content["before"]->ContentDescription = "";
        $content["after"]->ContentDescription = "";
        $content["scholarship"]->ContentDescription = "";

		$data["university"] = $university;
		$data["content"] = $content;

        return $data;

    }

    public function __construct()
    {
        parent::__construct();
    }


    public function get_new_univeristy()
    {
    	$this->db->limit(6);
    	$this->db->order_by($this->_order_by, DESC);
    	$univeristy = $this->get();
    	return $univeristy;
    }



	public function search($post)
	{

		$this->db->like("UniversityName", $post);
		$data = $this->db->get($this->_table_name)->result_array();

		return $data;

	}



}

 ?>

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->login();
	}

	public function login() {
		$this->load->view("login");
	}

	public function signup() {
		$this->load->view("signup");
	}

	public function members() {
		if ($this->session->userdata("is_logged_in")) {
			$this->load->view("members");
		} else {
			redirect('main/restricted');
		}

	}

	public function restricted() {
		$this->load->view("restricted");
	}

	public function login_validation() {
		$this->load->library("form_validation");

		$this->form_validation->set_rules("email", "Email", "trim|required|callback_validate_credentials");
		$this->form_validation->set_rules("password", "Password", "trim|required|md5");

		if ($this->form_validation->run()) {
			$data = array(
				"email" => $this->input->post("email"),
			 	"is_logged_in" => 1
			);
			$this->session->set_userdata($data);
			redirect('main/members');
		} else {
			$this->login();
		}
	}

	public function validate_credentials() {

		$this->load->model("model_users");

		if ($this->model_users->can_log_in()) {
			return true;

		} else {
			$this->form_validation->set_message("validate_credentials", "Incorrect username/password.");
			return false;
		}

	}

	public function logout() {
		$this->session->sess_destroy();
		redirect("main/login");
	}

	public function signup_validation() {

		$this->load->library("form_validation");

		$this->form_validation->set_rules("email", "Email", "trim|required|is_unique[user.email]");
		$this->form_validation->set_rules("password", "Password", "trim|required");
		$this->form_validation->set_rules("cpassword", "Confirm Password", "trim|required|matches[password]");

		$this->form_validation->set_message("is_unique", "This email address has already been in use!");

		if ($this->form_validation->run()) {

		} else {

			$this->load->view("signup");
		}
	}





}

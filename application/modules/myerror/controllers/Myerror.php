<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Myerror extends CI_Controller
{
	function index()
	{
		$this->load->view('errors/html/myerror_v');
	}
}
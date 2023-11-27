<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Login_model','Login', TRUE);
    }
    
    public function index()
    {
        $data           = [
            'title'             => 'Pesanggrahan Management System'
        ];

        $this->load->view('v_Login.php', $data);
    }

    public function ActionLogin()
    {
        $username                   = htmlentities($this->input->post('username', true));
        $password                   = $this->input->post('password', true); ;

        // Check Username Exist Or Not
        $checkUser                  = $this->Login->viewWhere('tbl_users', 'username', $username)->num_rows();
        if($checkUser > 0){
            $dataUser               = $this->Login->viewWhereAssosiative('*', 'tbl_users', ['username'  => $username])->result_array();
            // If Username Exist Check Also Password
            // Password Verify
            if(password_verify($password, $dataUser[0]['password'])){
                // If True
                
                // Check Role_id
                if($dataUser[0]['id_role'] === '6'){
                    // Administrator

                    redirect('Administrator.html', 'refresh');
                } else if($dataUser[0]['id_role'] === '1'){
                    // Receptionist

                    redirect('Receptionist.html', 'refresh');
                } else if($dataUser[0]['id_role'] === '2'){
                    // Manager

                    redirect('Manager.html', 'refresh');
                } else if($dataUser[0]['id_role'] === '3'){
                    // Owner

                    redirect('Owner.html', 'refresh');
                } else if($dataUser[0]['id_role'] === '3'){
                    // Housekeeper

                    redirect('Housekeeper.html', 'refresh');
                }else{
                    // Cooker

                    redirect('Cooker.html', 'refresh');
                }
            }
        }

        // redirect('','refresh');
    }
}
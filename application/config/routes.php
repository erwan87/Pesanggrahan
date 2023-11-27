    <?php
    defined('BASEPATH') or exit('No direct script access allowed');

    $route['default_controller']                                            = 'login';
    $route['404_override']                                                  = 'Myerror';
    $route['translate_uri_dashes']                                          = false;

    // Login Form
    $route['ActionLogin.html']                                              = 'login/ActionLogin';

    // Role ID Start

    // Receptionist
    $route['Receptionist.html']                                             = 'receptionist';

    // Manager
    $route['Manager.html']                                                  = 'manager';

    // Owner
    $route['Owner.html']                                                    = 'owner';

    // Housekeeper
    $route['Housekeeper.html']                                              = 'housekeeper';

    // Cooker
    $route['Cooker.html']                                                   = 'cooker';

    // Role ID End
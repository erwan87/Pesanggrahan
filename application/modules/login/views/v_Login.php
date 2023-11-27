<!DOCTYPE html>
<html lang="en" class="h-100" id="login-page1">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title><?= $title ;?></title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url('assets');?>/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="<?= base_url('assets');?>/css/style.css" rel="stylesheet">
    <script src="<?= base_url('assets');?>/js/modernizr-3.6.0.min.js"></script>
</head>

<body class="h-100">
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <div class="login-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card">
                            <div class="card-body">
                                <div class="logo text-center">
                                    <a href="index.html">
                                        <img src="<?= base_url('assets');?>/images/f-logo.png" alt="">
                                    </a>
                                </div>
                                <h4 class="text-center m-t-15">Log into Your Account</h4>
                                <?= form_open('ActionLogin.html') ;?>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" placeholder="Enter Your Username"
                                        id="username" name="username" autocomplete="off" autofocus required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" placeholder="Enter Your Password"
                                        id="password" name="password" required>
                                </div>
                                <div class="text-center m-b-15 m-t-15">
                                    <button type="submit" class="btn btn-primary">Sign in</button>
                                </div>
                                <?= form_close() ;?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <!-- Common JS -->
    <script src="<?= base_url('assets');?>/plugins/common/common.min.js"></script>
    <!-- Custom script -->
    <script src="<?= base_url('assets');?>/js/custom.min.js"></script>
</body>

</html>
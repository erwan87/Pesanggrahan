<!DOCTYPE html>
<html lang="en">

<head>
    <title>404 Page Not Found</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="Phoenixcoded" />
    <link href="<?php echo base_url('frontend'); ?>/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('frontend'); ?>/assets/vendor/animation/css/animate.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('frontend'); ?>/assets/css/style.css" rel="stylesheet" type="text/css">
</head>

<div class="auth-wrapper error">
    <div id="container" class="container">
        <ul id="scene" class="scene">
            <li class="layer" data-depth="1.00"><img class="img-fluid" src="<?php echo base_url('frontend'); ?>/assets/images/error/404-01.png" alt="images"></li>
            <li class="layer" data-depth="0.60"><img class="img-fluid" src="<?php echo base_url('frontend'); ?>/assets/images/error/shadows-01.png" alt="images"></li>
            <li class="layer" data-depth="0.20"><img class="img-fluid" src="<?php echo base_url('frontend'); ?>/assets/images/error/monster-01.png" alt="images"></li>
            <li class="layer" data-depth="0.40"><img class="img-fluid" src="<?php echo base_url('frontend'); ?>/assets/images/error/text-01.png" alt="images"></li>
            <li class="layer" data-depth="0.10"><img class="img-fluid" src="<?php echo base_url('frontend'); ?>/assets/images/error/monster-eyes-01.png" alt="images"></li>
        </ul>
        <form action="javascript:history.go(-1)">
            <button class="btn btn-outline-light mt-3 mb-4"><i class="feather icon-home"></i>Back to Home</button>
        </form>
    </div>
</div>

<script src="<?php echo base_url('frontend'); ?>/assets/js/vendor-all.min.js"></script>
<script src="<?php echo base_url('frontend'); ?>/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo base_url('frontend'); ?>/assets/js/pages/error.js"></script>

<script>
    var scene = document.getElementById('scene');
    var parallax = new Parallax(scene);
</script>

</html>
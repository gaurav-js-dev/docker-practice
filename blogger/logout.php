<?php
ob_start();
require 'includes/init.php';

Auth::logout();

header("Location: ./");

<?php

namespace App\Controller\admin;

use Sifoni\Controller\Base;

class AdminController extends Base {
    public function indexAction() {
      	$data['title']='Đăng Nhập Hệ Thống';
        return $this->render('admin/auth/login.html.twig', $data);
    }

}

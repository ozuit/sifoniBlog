<?php

namespace App\Controller;

use Sifoni\Controller\Base;
use App\Model\Menu;

class UserController extends Base {
    public function indexAction() {
        $data['title']='Blog Tin Tức';
        $data['menu'] = Menu::where('status',1)->get();
        return $this->render('user/login.html.twig', $data);
    }

}

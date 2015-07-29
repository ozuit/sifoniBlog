<?php

namespace App\Controller;

use Sifoni\Controller\Base;
use App\Model\User;

class HomeController extends Base {
    public function indexAction() {
        $data['title']="Blog tin tức";
        
        return $this->render('home/index.html.twig', $data);
        return $this->render('block/menu.html.twig', $data);
    }

}

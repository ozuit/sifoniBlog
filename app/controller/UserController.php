<?php
namespace App\Controller;

use Sifoni\Controller\Base;
use App\Model\Menu;
use App\Model\User;

class UserController extends Base
{
    public function indexAction() {
        $data['title'] = 'Đăng Nhập | Blog Tin Tức';
        $data['menu'] = Menu::where('status', 1)->get();
        if ($this->getPostData("action")) {
            $postData = $this->getPostData();
            if (User::checkLogin($postData) == true) {
                echo "<script>alert('Đăng nhập thành công !')</script>";
                $this->redirect('user-detail.html');
                exit();
            }
            if (User::checkLogin($postData) == false) {
                echo "<script>alert('Đăng nhập thất bại !')</script>";
                header("Refresh:0; url='/login.html'");
                exit();
            }
            exit();
        }
        
        return $this->render('user/login.html.twig', $data);
    }
    public function registerAction() {
        $data['title'] = 'Đăng Kí | Blog Tin Tức';
        $data['menu'] = Menu::where('status', 1)->get();
        return $this->render('user/register.html.twig', $data);
    }
    public function userinfoAction(){
        $data['title'] = 'Đăng Kí| Blog Tin Tức';
        $data['menu'] = Menu::where('status', 1)->get();
        return $this->render('user/detail.html.twig', $data);

    }
}

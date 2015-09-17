<?php

namespace App\Controller\Admin;

use Sifoni\Controller\Base;
use App\Model\User;

/**
* 
*/
class UserController extends Base
{
	public function listAction()
	{
		$data = array();

		$data['title'] = 'Trang Admin | List Members';
		$data['title_page'] = 'Danh sách các thành viên';
        $data['users'] = User::all();

        return $this->render('admin/user/list.html.twig', $data);
	}

	public function deleteAction($id)
	{
		User::where('id', '=', $id)->delete();
		return $this->redirect('list_user');
	}
}
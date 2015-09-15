<?php

namespace App\Controller\Admin;

use Sifoni\Controller\Base;
use App\Model\Contact;

/**
* 
*/
class ContactController extends Base
{
	public function listAction()
	{
		$data['title'] = 'Trang Admin | List Messages';
		$data['title_page'] = 'Danh sách các góp ý';
		$data['messages'] = Contact::all();

		return $this->render('admin/contact/list.html.twig', $data);
	}
}
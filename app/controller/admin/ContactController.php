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

		// $str = 'Lorem ipsum dolor sit amet,consectetur adipiscing elit. Mauris ornare luctus diam sit amet mollis.';
		// $arr = explode(" ", str_replace(",", ", ", $str));
		// $str_sliced = "";
		// for ($index = 0; $index < 10; $index++) {
		//     $str_sliced .= $arr[$index]. " ";
		// }
		// echo $str_sliced." ...";


		return $this->render('admin/contact/list.html.twig', $data);
	}

	public function statusAction($id)
	{
		Contact::where('id', $id)->update(['status' => 'true']);
		$new_msg = $this->app['session']->get('new_msg');
		$this->app['session']->set('new_msg', $new_msg-1);
		return $this->redirect('list_contact');
	}

	public function deleteAction($id)
	{
		Contact::where('id', $id)->delete();
		return $this->redirect('list_contact');
	}
}
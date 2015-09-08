<?php

namespace App\Model;


use Sifoni\Model\Base;


class User extends Base {
	protected $table = 'users';
	protected $primaryKey = 'id';

	public function authLogin($postData)
	{
		$user = User::where('username', '=', $postData['username'])->get()[0];

        if ($user && $user['password'] == md5($postData['password'])) {
            unset($user['password']);
            
            return $user;
        }
        
        return false;
	}

	public function authRegister($postData)
	{
		$user = User::where('username', '=', $postData['username'])->get()[0];    
        
        if ($user) {
            return false;
        } else {
            $postData['password'] = md5($postData['password']);
            User::insert($postData);
            unset($postData['password']);        
            return $postData;
        }
	}
}
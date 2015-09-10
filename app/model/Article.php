<?php

namespace App\Model;


use Sifoni\Model\Base;
use Cocur\Slugify\Slugify;

class Article extends Base {
	protected $table = 'articles';
	protected $primaryKey = 'id';

	public function addArticle($postData)
	{
        $postData['thumb'] = $_FILES['thumb']['name'];
        $postData['updated_at'] = Date('Y-m-d');
        $slugify = new Slugify();
        if ($postData['slug'] == '') {    
            $postData['slug'] = $slugify->slugify($postData['title']);
        }

        //Lấy id của bài viết vừa mới thêm vào
        Article::insert($postData);
        $article_id = Article::orderBy('id','desc')->select('id')->get()[0]['id'];   
       
        //Cắt chuổi tags đưa vào mảng
        $arrTags = explode(",", $postData['tags']);
        //Duyệt từng phần tử của Tags
        foreach ($arrTags as $tag)
        {
            $tag = trim($tag);
            //Lấy id của tag có tên là $tag, nếu ko có thì thêm mới
            $result = Tags::where('name', '=', $tag)->limit(1)->select('id')->get()[0];
  
            if (isset($result['exists']))
            {
                $idTag = Tags::where('name', '=', $tag)->select('id')->get()[0]['id'];     
            }
            else
            {
            	$tag_slug = $slugify->slugify($tag);
            		
                Tags::insert(array(
                	'name' => $tag,
                	'slug' => $tag_slug
                ));
                $idTag = Tags::orderBy('id','desc')->select('id')->get()[0]['id'];   
            }
            //Insert dữ liệu vào table Articles_Tags
            Articles_Tags::insert(array(
            	'article_id' => $article_id,
            	'tag_id' => $idTag
           	));
        }
        return true;
	}

	public function updateArticle($postData)		
	{	
        $image = $_FILES['thumb']['name'];
        if ($image == '') {
            $postData['thumb'] = $postData['thumb_current'];
        }
        else {
            $postData['thumb'] = $image;
        }
        unset($postData['thumb_current']);

        $postData['updated_at'] = Date('Y-m-d');
		$article_id = $postData['id'];
		unset($postData['id']);
		$slugify = new Slugify();
		if ($postData['slug'] == '') {    
            $postData['slug'] = $slugify->slugify($postData['title']);
        }
		
		//Delete dữ liệu bên table Articles_Tags
        Articles_Tags::where('article_id', '=', $article_id)->delete(); 
        //Lấy id của bài viết vừa mới thêm vào
        Article::where('id', '=', $article_id)->update($postData);
       
        //Cắt chuổi tags đưa vào mảng
        $arrTags = explode(",", $postData['tags']);
        //Duyệt từng phần tử của Tags
        foreach ($arrTags as $tag)
        {
            $tag = trim($tag);
            //Lấy id của tag có tên là $tag, nếu ko có thì thêm mới
            $result = Tags::where('name', '=', $tag)->limit(1)->select('id')->get()[0];
  
            if (isset($result['exists']))
            {
                $idTag = Tags::where('name', '=', $tag)->select('id')->get()[0]['id'];     
            }
            else
            {
            	$tag_slug = $slugify->slugify($tag);
            		
                Tags::insert(array(
                	'name' => $tag,
                	'slug' => $tag_slug
                ));
                $idTag = Tags::orderBy('id','desc')->select('id')->get()[0]['id'];   
            }
            //Insert dữ liệu vào table Articles_Tags
            Articles_Tags::insert(array(
            	'article_id' => $article_id,
            	'tag_id' => $idTag
           	));
        }
        return true;
	}
}
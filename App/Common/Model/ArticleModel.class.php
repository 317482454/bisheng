<?php

namespace Common\Model;
use Think\Model;
class ArticleModel extends Model{
	
	public function info($id){
		$article = M('Article');
		$where[C("DB_PREFIX")."article_category.id"] = intval($id);
		$info = $article->join(C("DB_PREFIX")."article_category ON ".C("DB_PREFIX")."article.position_id = ".C("DB_PREFIX")."article_category.id")
						->where($where)
						->order('add_time desc')
						->limit(0,5)
						->select();
		if($info){
			return $info;
		}else{
			return false;
		}
	}
	
	public function info_one($id){
		$article = M('Article');
		$where[C("DB_PREFIX")."article_category.id"] = intval($id);
		$info = $article->join(C("DB_PREFIX")."article_category ON ".C("DB_PREFIX")."article.position_id = ".C("DB_PREFIX")."article_category.id")
		->where($where)
		->order('add_time desc')
		->find();
		if($info){
			return $info;
		}else{
			return false;
		}
	}
}

?>
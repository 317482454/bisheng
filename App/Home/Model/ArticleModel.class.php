<?php


namespace Home\Model;
use Think\Model;
class ArticleModel extends Model{
	//查询非标红文章（6个）
	public function info($id){
		$article = M('Article');
		$where[C("DB_PREFIX")."article_category.id"] = intval($id);
		$info = $article->join(C("DB_PREFIX")."article_category ON ".C("DB_PREFIX")."article.position_id = ".C("DB_PREFIX")."article_category.id")
						->where($where)
						->where(C("DB_PREFIX")."article.sign = 0")
						->order('add_time desc')
						->limit(0,6)
						->select();///排序，规定固定10个，红4灰6，///排序，规定固定10个，红4灰6，
		if($info){
			return $info;
		}else{
			return false;
		}
	}
	//查询标红文章（4个）
	public function info_red($id){
		$article = M('Article');
		$where[C("DB_PREFIX")."article_category.id"] = intval($id);
		$info = $article->join(C("DB_PREFIX")."article_category ON ".C("DB_PREFIX")."article.position_id = ".C("DB_PREFIX")."article_category.id")
		->where($where)
		->where(C("DB_PREFIX")."article.sign = 1")
		->order('add_time desc')
		->limit(0,4)
		->select();///排序，规定固定10个，红4灰6，///排序，规定固定10个，红4灰6，
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
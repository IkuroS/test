Rails.application.routes.draw do
  
	get 'people/index'
	get 'people', to:'people#index'

	get 'people/add'
	post 'people/add', to:'people#create'
	
	get 'people/find'
	post 'people/find'
	
	#indexのName欄をクリックするとURLのpeople/の後ろに対応した数字(id)が追加される
	#その時のpeople/numberを受けた時に、peopleのshowメソッドを使うぞって事
	get 'people/:id', to:'people#show'
	
	
	#表示の仕組み
	#controllerの/methodを、methodに対応したテンプレートに当てはめて表示するよ
	#methodに何も書かないでURLにmethod名を打ち込むとテンプレHTMLが表示される
	#routeがないとURLを受け取った時に何をしていいか分からない
	
	#URLをもらうからget
	get 'people/edit/:id',to:'people#edit'
	
	#編集して渡すからpostだが、railsではpostは存在せずpatchという送信法になる
	#post:リソース作成
	#put:リソース作成、更新
	#patch:リソースの部分置換
  #post 'people/edit/:id',to:'people#update'
	patch 'people/edit/:id',to:'people#update'
	
	get 'people/delete/:id',to:'people#delete'
	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

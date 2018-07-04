Rails.application.routes.draw do
	
	
	#people
	
  get 'people/index'
	get 'people/:id',to:'people#index'
	
	#post 'people', to:'people#index'
	#post 'people/index'
	
	
	
	
	
	#struts でいうstruts.xml
	
  resources :users
  resources :microposts
	
	
   root 'application#hello'

	
	# get 'コントローラー/アクション'
	# これでアクションを登録している
	get 'helo/index'
	
	# get 'アドレス','コントローラー#アクション'
	# これで実行する
	get 'helo', to:'helo#index'
	
	#html表示
	get 'helo/index2'
	get 'helo', to:'helo#index2'
	
	get 'helo/index3'
	get 'helo', to:'helo#index3'
	
	get 'helo2/index'
	get 'helo2', to:'helo2#index'
	
	#helo2 に対してparamsを送る
	post 'helo2', to:'helo2#index'
  post 'helo2/index'
end

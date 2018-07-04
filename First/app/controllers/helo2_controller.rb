class Helo2Controller < ApplicationController
	#protect_from_forgery を付けるとCSRFという攻撃を防ぐことができない
	#そのため正規の書き方が必要。(index.html内)
	
	def index
		#何も指定しない事(render)でhelo2controllerに対応したviewsが呼び出される
		#ここで言うなればviews>helo2のindex.htmlが呼び出される
		#またroutes,html内以外のエラーが出たらnokogiriが入っているかを確認すべき
		#nokogiriはslim,erbを変換する
		
		if params['input1'] !=nil then
			
			@title = params['input1']
		else
			@title = 'index'
		end
		@msg ='文字を入れるとタイトルが変わる'
		
		if params['check1']&&params['check2'] then
			@sex = "どちらか一つ"
		elsif params['check1'] then
			@sex = "男"
		elsif params['check2'] then
			@sex = "女"
		end
	end

end

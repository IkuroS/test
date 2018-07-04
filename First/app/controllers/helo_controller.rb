class HeloController < ApplicationController

#rails generate controller helo にて作成


#class内にはアクション(メソッド)を用意する
#http://domain/〇〇(ここにclass名hello)/アクションメソッド名

	def index
		#render 内容表示
		#これはただのテキスト表示
		#仮にこれでHTML表示をしようとするとエスケープされる
		render plain:"Hello,This is Rails sample page!"
	end
	
	def index2
		
		#msg というテキストをhtmlとして表示する
		msg = '
		<html>
     <body>
			<h1>Sample Page</h1>
			<p>This is Rails Sample!</p>
		 </body>
		</html>
		'
		render html: msg.html_safe
	end
	
	def index3 
		
		if params['msg'] != nil then
			msg = 'Hello,' + params['msg'] +'!'
		else
			msg = 'this is sample page'
		end
		
		html = '
		<html>
     <body>
			<h1>Sample Page</h1>
			<p>' + msg +'</p>
		 </body>
		</html>
		'
		
		render html: html.html_safe
	end
	
end


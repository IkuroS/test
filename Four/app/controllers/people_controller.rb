class PeopleController < ApplicationController
  layout 'people'
	
	def index
		@msg = 'Person data'
		
		#データベースから全てのデータを取って来ている
		#personというdatabaseの中身全て
		@data = Person.all
  end
	
	def show
		@msg = "Indexed data"
		
		#params[:id]とは送信元のpeople/の後の数字
		@data = Person.find(params[:id])
	end
	
	def add
		@msg ="add new Data"
		@person = Person.new
	end
	
	def create
		if request.post? then
			Person.create(person_params)
		end
		redirect_to '/people'
	end
	
		def edit
		@msg = "edit data.[id = " + params[:id] +"]"
		@person = Person.find(params[:id])
	end
	
	def update
		obj = Person.find(params[:id])
		obj.update(person_params)
		redirect_to '/people'
	end
	
	def delete
		obj = Person.find(params[:id])
		obj.destroy
		redirect_to '/people'
	end
	
	def find
		@msg = 'please type seach word...'
		#@people という空の配列
		@people = Array.new
		
		if request.post? then
			obj = Person.find params['find']
			@people.push obj
		end
	end
	#クラスの中からしか呼び出せない
	#さらにこの下にActionmethodを記述するとNoMethodErrorがでる
	private
	def person_params
		params.require(:person).permit(:name,:age,:mail)
	end
	
end

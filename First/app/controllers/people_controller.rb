class PeopleController < ApplicationController
	
  def index
		@msg = 'Person data'
		@data = Person.all
		
		
	  if params[:id] then
		  @data1 = Person.find(params[:id])
		  @msg1 = "Searchdata"
	  end
  end
end

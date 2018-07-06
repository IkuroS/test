class MenController < ApplicationController
  def index
		@msg = 'data'
		@data = Person.all
  end
end

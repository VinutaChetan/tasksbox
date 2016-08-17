class SayController < ApplicationController
	#load_and_authorize_resource

	authorize_resource class: false
  def hello

  end

  def goodbye

  end	

  def products
  	@products = ["marker","pencil","box","sketch pen"]
  end	
end

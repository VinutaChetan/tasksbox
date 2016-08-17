class Transaction1Controller < ApplicationController
  def product

  	@products =Product.all

  	#ordering price in assendind order
  	#@products =Product.order('price')

  	#ordering price in descending order
  	#@products =Product.order('price DESC')

  	#Not available currently
  	#@products = Product.where('available_from <= ?', Date.today )

  	#In_stock
   	#@products = Product.where('in_stock = ?',true)

  	#Out of stock
  	#@products = Product.where('in_stock = ?',false)


		
  
  end
end

class TransactionController < ApplicationController
  def category
  	@category = Category.all

    #@category =Category.pluck(:id)

  	# @category.each do |category|
  	# 	products=Product.where('category =?',10)
  	# 		products.each do |p|
  	# 			p.name
  	# 		end
  			
  	# end	
  end



end
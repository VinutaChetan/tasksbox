class OrderdetailsController < ApplicationController
  def orders
  	@orders = Order.all
  	@orders_id =Order.pluck(:id)
  end

  def lineitems
  	@lineitems = LineItem.all
  	@lineitem =LineItem.pluck(:total_price).inject(:+)
  end	

 def recents
 	@orders =Order.order('order_date DESC').limit(5)
end 

end

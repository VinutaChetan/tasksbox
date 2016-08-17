15.times do 
	client = Client.new
	client.name = Faker::Name.first_name
	client.company = Faker::Company.name
	client.email = Faker::Internet.free_email(client.name)
	client.mobile = Faker::Number.number(10)
	client.website = Faker::Internet.domain_name
	client.save
end

100.times do
	project = Project.new
	project.name = Faker::App.name
	project.description = Faker::Lorem.sentence
	project.start_date = Faker::Date.between(Date.today.beginning_of_year,Date.today)
	project.end_end = Faker::Date.between(project.start_date,project.start_date + 3.months)
	project.client_id = Client.all.pluck(:id).sample
	project.save
end	
	
10.times do
	category = Category.new
	category.name = Faker::Commerce.department
	category.save
end	

99.times do
	product =Product.new
	product.name = Faker::Commerce.product_name
	product.price = Faker::Commerce.price
	product.unit = Faker::Number.digit
	product.in_stock = Faker::Boolean.boolean
	product.available_from = Faker::Date.between(Date.today.beginning_of_month, Date.today)
	product.category = Category.all.pluck(:id).sample
	product.save
end	

10.times do
	order = Order.new
	order.order_date = Faker::Date.between(Date.today - 2.weeks,Date.today)
	order.order_number = Faker::Code.asin
	order.save
end		

29.times do
	line_item = LineItem.new
	line_item.order_id = Order.all.pluck(:id).sample
	line_item.product_id = Product.pluck(:id).sample
	line_item.quantity = Faker::Number.number(3)
	line_item.price = Product.find(line_item.product_id).price
	line_item.total_price = line_item.quantity * line_item.price
	line_item.save
end

200.times do
	task = Newtask.new
	task.title = Faker::Lorem.word
	task.project_id = Project.all.pluck(:id).sample
	task.due_date = Faker::Date.between(Project.find(task.project_id).start_date,Project.find(task.project_id).end_end)
	task.is_completed = Faker::Boolean.boolean 
	task.save
end	

#project = Project.order("Random()").first
#task.is_completed=[true,false].sample
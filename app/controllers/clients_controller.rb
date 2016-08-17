class ClientsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource

def index	
	#@clients=Client.all

	#its for personalization where login id should match user_id
	@clients =current_user.is_admin? ? Client.all : current_user.clients 
	#@clients=current_user.clients 
	#Or we do the below
	#Client.where('user_id=?',Current_user.id)
end

def new
	@client = Client.new
end

def create
	@client =Client.new(client_params)
	#add this for personalization of app
	@client.user_id = current_user.id

	
	if @client.save
		redirect_to clients_path
	else
		render action: "new"			
	end
end	



def show
	begin
		#curent_user_id should match with the client_user_id
		@client= current_user.clients.find(params[:id])

		#it shows all clients information
		#@client = Client.find(params[:id])
		
	rescue ActiveRecord::RecordNotFound
		redirect_to clients_path, notice:"Record not found"
	end	
end	

def edit
	#@client =Client.find(params[:id])
	@client=current_user.clients.find(params[:id])
end

def update	
	#@client = Client.find(params[:id])
	@client=current_user.clients.find(params[:id])
	if @client.update_attributes(client_params)
		redirect_to client_path(@client.id), notice:"successfully updated"
	else
		render action :"edit"
	end	
end	

def destroy
	#@client =Client.find(params[:id])
	@client=current_user.clients.find(params[:id])
	@client.destroy
		redirect_to clients_path, notice:"Successfully deleted #{@client.name}"
end		
	
private
def client_params
	params[:client].permit(:name,:company,:email,:mobile)		
end


end

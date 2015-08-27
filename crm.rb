require_relative'rolodex'
require_relative 'contact'
require 'sinatra'

$rolodex= Rolodex.new

#routes
get '/' do 
	end

# get "/contacts" do 
# 	@contacts = []
# 	@contacts << Contact.new("Yehuda", "Katz", "yehuda@example.com", "Developer")
# 	@contacts << Contact.new("Mark", "Zuckerberg", "mark@facebook.com", "CEO")
# 	@contacts << Contact.new("Sergey", "Brin", "sergey@google.com", "Co-Founder")

# 	erb :contacts
# end

# get '/' do 
# 	"Main Menu"
# end

# get '/' do
# 	erb :index
# end

get '/' do
	@crm_app_name = "My CRM"
	erb :index
end

# as the last route, add
get '/contacts/new' do 
	erb :new_contact
end

# at the end of the file, add
post '/contacts' do 
	puts params
end

post '/contacts' do
	new_contact = Contact.new(params[:first_name], params[:last_name], params[:email]),
	$rolodex.add_contact(new_contact)
	redirect to('/contacts')
end


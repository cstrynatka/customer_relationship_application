# require_relative 'rolodex.rb'
# require_relative 'contact.rb'

class Contact
attr_accessor :first_name, :last_name, :email, :notes
attr_reader :id

# def self.run(name)
# 	crm = new(name)
# 	crm.main_menu
# end

# def initialize(name)
# 	@title = name 
# end

def initialize(first_name, last_name, email, notes)
@first_name = first_name
@last_name = last_name
@email = email
@notes = notes
	end

def full_name
	first_name + " " + last_name
end
end
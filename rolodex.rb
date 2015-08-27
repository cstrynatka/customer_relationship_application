require_relative('contact.rb')

class Rolodex
@@id == 1000 # double @@ means it's a class variable, not an instance variable

def initialize
	@contats = [] #empty array to start out
	end

	def add_contact(first_name, last_name, email, note)
		contact = Contact.new(@@id, first_name, last_name, email, note)
		@@id += 1

		@contacts << contactend
	end

		def all 
			@contacts
		end
	end

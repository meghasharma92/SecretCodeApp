module ApplicationHelper

	def full_name(object)
		object.first_name + " " + object.last_name if object
	end

end

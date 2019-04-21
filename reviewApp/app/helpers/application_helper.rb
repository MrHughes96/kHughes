module ApplicationHelper
	def flash_class(level)
		case level
			when 'alert' then "alert alert-warning"
		end
	end
end

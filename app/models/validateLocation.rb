class ValidateLocation < ActiveModel::EachValidator

	def validate(record)
		if options[:fields].any?{|field| record.send(field) == "don't be blank"}
		   record.errors[:base], "choose the destnation"
		end	
	end
end
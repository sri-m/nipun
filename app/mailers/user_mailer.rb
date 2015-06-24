class UserMailer < ApplicationMailer
	def registration_confirmation(contactu)
		@contactu = contactu
		mail(to: @contactu.email, subject: "Hi How are you!")
	end
end

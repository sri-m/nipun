class Contactu < ActiveRecord::Base
	#validations
	#associations
	#callbacks
	#queries
	validates :name, :email, :cell, presence: true
	validates :email, format: { with: /[a-z0-9.]*(@){1}[a-z0-9]*(\.){1}[a-z]{3}/,
    message: "Please Enter Correct Email" }
    validates :cell, numericality: { only_integer: true }, length: { is: 10 }
    #after_create :my_mails

    def my_mails
    	UserMailer.registration_confirmation(self).deliver
    end
end

class ContactuObserver < ActiveRecord::Observer
	observe Contactu 

	 def before_create(contactu)
        #contactu.name.upcase!
        UserMailer.registration_confirmation(contactu).deliver
    end

    def before_update(contactu)
        contactu.name.capitalize!
    end
end

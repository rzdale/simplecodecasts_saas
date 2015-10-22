class ContactMailer < ActionMailer::Base
    
    default to: 'robzd1@gmail.com'
    
    def contact_email(email, name, body)
        @email = email 
        @name = name
        @body = body
    end
    
    
    mail(:from => "test@tes939392458t.com", :subject => "Contact Form Message")
    
    
end
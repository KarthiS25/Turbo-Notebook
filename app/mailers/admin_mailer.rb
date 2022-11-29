class AdminMailer < ApplicationMailer

    def post_created
        
        mail(to: 'karthis1015@gmail.com', subject: 'Confirmation mail')
    end

end

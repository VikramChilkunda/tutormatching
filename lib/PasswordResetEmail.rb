class PasswordResetEmail
    def self.email(receiver, uniqueToken)
        # using SendGrid's Ruby Library
        # https://github.com/sendgrid/sendgrid-ruby
        require 'sendgrid-ruby'
        include SendGrid
        
        from = Email.new(email: 'cvtutormatch@gmail.com')
        to = Email.new(email: receiver)
        subject = 'Requested Password Reset - TutorMatching'
        content = Content.new(type: 'text/plain', value: "Hello, \nWe have received a request to reset the password for the TutorMatching account associated with this email adress. \nYour unique reset token is " + uniqueToken + "\n You can reset your password by clicking the following link and entering in your new password along with your unique reset token: cvhstutors.herokuapp.com/resetPassword \nIf you didn't request a password reset, feel free to ignore this email. Contact cvtutormatch@gmail.com or reply to this email if you need assistance.")
        mail = Mail.new(from, subject, to, content)
        
        sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY']) 
        response = sg.client.mail._('send').post(request_body: mail.to_json)
        puts response.status_code
        puts response.body
        puts response.headers
    end
end
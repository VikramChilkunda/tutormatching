class Declinedemail
    def self.email(receiver, tutorName, subjectName)
        # using SendGrid's Ruby Library
        # https://github.com/sendgrid/sendgrid-ruby
        require 'sendgrid-ruby'
        include SendGrid
        
        from = Email.new(email: 'cvtutormatch@gmail.com')
        to = Email.new(email: receiver)
        subject = 'Your tutoring request was declined - Tutormatching'
        content = Content.new(type: 'text/plain', value: "Sorry, " + tutorName + " declined your request for tutoring in " + subjectName + ". Contact cvtutormatch@gmail.com or reply to this email if you need assistance.")
        mail = Mail.new(from, subject, to, content)
        
        sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY']) #ENV['SENDGRID_API_KEY']
        response = sg.client.mail._('send').post(request_body: mail.to_json)
        puts response.status_code
        puts response.body
        puts response.headers
    end
end
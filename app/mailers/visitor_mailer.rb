class VisitorMailer < ActionMailer::Base
  default from: ENV["EMAIL"]
  layout 'mailer'

  def contact_me(name, email, message)
    @name = name
    @email = email
    @message = message
    
    mail(
      to: ENV["EMAIL"],
      subject: 'Portfolio contact'
    )
  end
end

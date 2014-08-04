class ContactMailer < ActionMailer::Base
  default from: "admin@gabeandnicole.com"

  def inbound_email(email, subject, message)
    @subject = subject
    @message  = message
    @email = email
    mail(:from => email, :to => 'fcf1e0511c55efa2ee3e8b4bdf0a0dd8@inbound.postmarkapp.com', :cc => 'gabe.nicole.wed@gmail.com', :subject => "Message from www.gabeandnicole.com: #{subject}")
  end

end

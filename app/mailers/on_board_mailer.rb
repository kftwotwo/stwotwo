class OnBoardMailer < ActionMailer::Base
  default :from => 'kftwotwo@gmail.com'

  def welcome_email(lead)
    @lead = lead
    mail( :to => @lead.email, :subject => 'Thanks for signing up for our amazing app')
  end
end

class OnBoardMailer < ActionMailer::Base
  default :from => 'kftwotwo@gmail.com'

  def welcome_email(lead_id)
    @lead = Lead.find(lead_id)
    mail( :to => @lead.email, :subject => 'Thanks for signing up for our amazing app')
  end
end

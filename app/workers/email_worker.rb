class EmailWorker
  include Sidekiq::Worker

  def perform(lead_id)
    lead = Lead.find(lead_id)
    OnBoardMailer.welcome_email(lead).deliver
  end
end

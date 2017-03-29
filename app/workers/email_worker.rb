class EmailWorker
  include Sidekiq::Worker

  def perform(lead_id)
    OnBoardMailer.welcome_email(lead_id).deliver
  end
end

class EmailWorker
  include Sidekiq::Worker

  def perform(lead)
    OnBoardMailer.welcome_email(lead).deliver
  end
end

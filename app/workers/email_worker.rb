class EmailWorker
  include Sidekiq::Worker
  require 'rollbar'

  def perform(lead_id)
    begin
    lead = Lead.find(lead_id)
    OnBoardMailer.welcome_email(lead).deliver
    rescue Exception => e
      logger.error e.message
      Rollbar.error(e)
    end
  end
end

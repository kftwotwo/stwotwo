class InsightlyWorker
  include Sidekiq::Worker
  require 'rollbar'

  def perform(lead_id)
    lead =  Lead.find(lead_id)
    begin
      InsightlyService::Lead.create(lead)
    rescue Exception => e
      logger.error e.message
      Rollbar.error(e)
    end
  end
end

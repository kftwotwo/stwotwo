class InsightlyWorker
  include Sidekiq::Worker

  def perform(lead_id)
   lead =  Lead.find(lead_id)
   InsightlyService::Lead.create(lead)
  end
end

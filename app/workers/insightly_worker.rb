class InsightlyWorker
  include Sidekiq::Worker

  def perform(lead)
    email = Lead.find(lead)
    InsightlyService::Lead.create(email)
  end
end

require 'insightly/*.rb'

module InsightlyService
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']
end

require 'insightly/lead'
require 'insightly/organisation'
require 'insightly/opportunity'


module InsightlyService
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']
end

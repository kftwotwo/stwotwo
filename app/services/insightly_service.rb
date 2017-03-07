files = File.join(File.dirname(__FILE__),'insightly','**','*.rb')
Dir.glob(files).each do |file|
  require file
end


module InsightlyService
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']
end

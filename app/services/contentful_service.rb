files = File.join(File.dirname(__FILE__),'contentful','**','*.rb')
Dir.glob(files).each do |file|
  require file
end

require 'contentful'

module ContentfulService
  @client ||= Contentful::Client.new(
    access_token: ENV['CONTENTFUL_DELIVERY_API'],
    space: ENV['CONTENTFUL_SPACE_ID'],
    dynamic_entries: :auto,
    raise_errors: true
  )
end

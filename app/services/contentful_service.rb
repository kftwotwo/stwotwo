class ContentfulService
  @client ||= Contentful::Client.new(
    access_token: ENV['CONTENTFUL_DELIVERY_API'],
    space: ENV['CONTENTFUL_SPACE_ID'],
    dynamic_entries: :auto,
    raise_errors: true
  )

  class << self
    def get_blogs
      blogs = @client.entries
       blog_json = blogs.to_json
      JSON.parse(blog_json)
    end
  end
end

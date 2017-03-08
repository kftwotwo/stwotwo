module ContentfulService
  class Blog
    class << self
      def get_blogs

        blogs = @client.entries
      end
    end
  end
end

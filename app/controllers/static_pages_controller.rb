class StaticPagesController < ApplicationController
  def blogs
    @objects = ContentfulService.get_blogs
  end
end

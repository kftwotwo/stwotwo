class StaticPagesController < ApplicationController
  def landing
  end

  def blogs
    @objects = ContentfulService.get_blogs
  end
end

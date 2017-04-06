class StaticPagesController < ApplicationController
  def landing
    logger.info("This is info")
    logger.warn('This is a warning')
    logger.error('This is an error')
  end

  def blogs
    @objects = ContentfulService.get_blogs
  end
end

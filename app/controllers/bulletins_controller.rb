class BulletinsController < ApplicationController
  def index
    @bulletin_posts = Bulletin.all
  end
end

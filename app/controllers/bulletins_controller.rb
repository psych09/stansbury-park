class BulletinsController < ApplicationController
  def index
    @bulletin_posts = Bulletin.all
  end
  
  def new
    @bulletin_post = Bulletin.new
  end
  
  def create
    @bulletin_post = Bulletin.new(bulletin_params)
    
    respond_to do |format|
      if @bulletin_post.save
        format.html { redirect_to bulletins_path, notice: 'Your post was created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  private
  
    def bulletin_params
      params.require(:bulletin).permit(:title, :body)
    end
end

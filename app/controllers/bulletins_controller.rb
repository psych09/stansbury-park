class BulletinsController < ApplicationController
  def index
    @bulletin_posts = Bulletin.all
  end
  
  def show
    @bulletin_post = Bulletin.find(params[:id])
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
  
  def edit
    @bulletin_post = Bulletin.find(params[:id])
  end
  
  def update
    @bulletin_post = Bulletin.find(params[:id])
    
    respond_to do |format|
      if @bulletin_post.update(bulletin_params)
        format.html { redirect_to bulletins_path, notice: 'Your post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    @bulletin_post = Bulletin.find(params[:id])
    
    @bulletin_post.destroy
    respond_to do |format|
      format.html { redirect_to bulletins_url, notice: 'Post was removed' }
    end
  end
  
  
  
  private
  
    def bulletin_params
      params.require(:bulletin).permit(:title, :body)
    end
end

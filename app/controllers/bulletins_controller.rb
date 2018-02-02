class BulletinsController < ApplicationController
  before_action :set_bulletin_post, only: [:edit, :show, :update, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
  layout "bulletin"
  
  def index
    @bulletins = Bulletin.by_position
  end
  
  def sort
    params[:order].each do |key, value|
      Bulletin.find(value[:id]).update(position: value[:position])
    end
    
    render nothing: true
  end
  
  def show
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
  end
  
  def update
    respond_to do |format|
      if @bulletin_post.update(bulletin_params)
        format.html { redirect_to bulletins_path, notice: 'Your post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    @bulletin_post.destroy
    respond_to do |format|
      format.html { redirect_to bulletins_url, notice: 'Post was removed' }
    end
  end
  
  
  
  private
  
    def set_bulletin_post
      @bulletin_post = Bulletin.find(params[:id])
    end
  
    def bulletin_params
      params.require(:bulletin).permit(:title, :body, :main_image, :thumb_image, :position)
    end
end

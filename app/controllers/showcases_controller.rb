class ShowcasesController < ApplicationController

	before_action :authenticate_user!
  before_action :set_showcase, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def new
    @showcase = current_user.showcases.build
  end
  
  def create
    @showcase = Showcase.new(showcase_params)
    @showcase.user_id = current_user.id
    if @showcase.save
      redirect_to @showcase, notice: 'showcase was successfully created'
    else
      render action: 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @showcase.update(showcase_params)
      redirect_to @showcase, notice: 'showcase was updated'
    else
      render action: 'edit'
    end
  end
  
  def destroy
    @showcase.destroy
    redirect_to root_path
  end
  
  
  private
  def set_showcase
   @showcase = Showcase.find(params[:id])   
  end
  def showcase_params
    params.require(:showcase).permit(:image, :image_cache, :title, :credit, :heading, :subheading, :content, :reference_info)
  end
end

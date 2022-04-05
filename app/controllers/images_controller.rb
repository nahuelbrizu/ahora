class ImagesController < ActionController::Base
  def index
    @images = Image.all
    render json: @images
  end
  def show
    @image = Image.find(params[:id])
    render json: @image
  end

  def create
    @image = Image.create!(image_params)
    #  @images.save
    render json: @image
  end
  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(image_params)
      flash[:notice] = 'images updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit images!'
      render :edit, :json
    end
  end
  def image_params
    params.require(:image).permit( :url, :thumbnail_url, :recipe_id)
  end
end



class VideosController < ActionController::Base
  def index
    @videos = Video.all
    render json: @videos
  end
  def show
    @video = Video.find(params[:id])
    render json: @video
  end

  def create
    @video = Video.create!(video_params)
    #  @order.save
    render json: @video
  end
  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      flash[:notice] = 'video updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit video!'
      render :edit, :json
    end
  end
  def video_params
    params.require(:video).permit(:video, :recipe_id)
  end
end



class CommentsController < ActionController::Base
  def index
    @comments = Comment.all
    render json: @comments
  end
  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def create
    @comment = Comment.create!(comment_params)
    #  @comment.save
    render json: @comment
  end
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      flash[:notice] = 'comment updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit comment!'
      render :edit, :json
    end
  end
  def comment_params
    params.require(:comment).permit( :comments, :recipe_id)
  end
end


class OrdersController < ActionController::Base
  def index
    @orders = Order.all
    render json: @orders
  end
  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def create
    @order = Order.create!(order_params)
    #  @order.save
    render json: @order
  end
  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(order_params)
      flash[:notice] = 'order updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit order!'
      render :edit, :json
    end
  end
  def order_params
    params.require(:order).permit(:order, :recipe_id)
  end
end


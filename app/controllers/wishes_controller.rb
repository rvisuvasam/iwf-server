class WishesController < ApplicationController
  def new
  end

  def show
    @wish = Wish.find(params[:id])
  end

  def index
    @wishes = Wish.all
  end

  def create
    @wish = Wish.new(post_params)

    @wish.save
    redirect_to @wish
  end

  private
  def post_params
    params.require(:wish).permit(:description)
  end
end

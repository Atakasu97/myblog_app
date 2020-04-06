class MicropostsController < ApplicationController

  def show
    @micropost = Micropost.find(params[:id])
  end

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost was created!"
      redirect_to @micropost
    else
      render 'new'
    end
  end

  def index
    @microposts = Micropost.all
  end

  private

  def micropost_params
    params.require(:micropost).permit(:title, :content)
  end
end

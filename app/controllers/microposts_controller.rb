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

  def destroy
    @micropost = Micropost.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to '/microposts' || root_url
  end

  private

  def micropost_params
    params.require(:micropost).permit(:title, :content, :picture)
  end
end

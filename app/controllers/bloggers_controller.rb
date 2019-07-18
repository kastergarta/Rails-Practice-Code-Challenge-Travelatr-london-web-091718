class BloggersController < ApplicationController

  def index
    @bloggers = Blogger.all
  end

  def show
    @blogger = Blogger.find(params[:id])
  end

  private

  def blogger_params
    params.require(:blogger).permit(:name, :bio, :likes, :age)
  end

end

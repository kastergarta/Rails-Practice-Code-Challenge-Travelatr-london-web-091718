class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    find_post
  end

  def new
    @post = Post.new
    @destinations = Destination.all
    @bloggers = Blogger.all
  end

  def create
     @post = Post.create(post_params)
     if @post.valid?
       redirect_to post_path(@post)
     else
       flash[:errors] = @post.errors.full_messages
       redirect_to new_post_path
     end
  end


  def update
    find_post
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      flash[:errors]= @post.errors.full_messages
      redirect_to edit_post_path(@post)
    end
  end

  def edit
    find_post
    @destinations = Destination.all
    @bloggers = Blogger.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end

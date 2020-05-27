class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  # gets all the post, main page
  def index
    @posts = Post.all
    end

  def show
      @post = Post.find(params[:id])
  end


    def create
      # only the required or permitted paramter will be saved
      @post = Post.new(permit_post)
          # @post = Post.new(params[:post])
      if @post.save
        # if it goes well send them to individual post page
        flash[:success] = "Success!"
        redirect_to new_post_path(@post)
      else
        flash[:error] = @post.errors.full_messages
        redirect_to new_post_path
  end
  end

  # function to require only image and description, they don't add something else
  private
  def permit_post
    params.require(:post).permit(:image, :description)
        # params.require(:post).permit( :description, image: [])

  end
  end

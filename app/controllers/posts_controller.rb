class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #@post.comments.build 
    #raise @post.unique_commenters.inspect 
    # @post.comments.build(content: '')
    # @post.comments.build(content: '')
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    3.times do 
      @post.categories.build #(name: "Sample Category")
    end
  end

  def create
    #raise params.inspect
    @post = Post.create(post_params)
    #binding.pry 
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category_ids => [], :categories_attributes => [:name])
  end
end

class PostsController < ApplicationController
  def index
  	# We assign an instance variable
  	@posts = Post.all
  	# Rails sends it to the view (index)
  	#Rails renders the view (index)
  end

  def show
  	#We assign an instance variable
  	@post = Post.find(params[:id])
  	#Rails sends it to the view if it's there (show)
  	#Rails renders the view
  end

  def new
#Provide instance variable for form builder
	@post = Post.new
  end

  def create
    @post = Post.new(post_params) # Make the data secure (post_params)
  	# Save the data from the form
    if @post.save
  	redirect_to @post
    else
    render :new
  end
  end

  def edit
  	# Find the post to edit
    @post = Post.find(params[:id])
  	# Rails gives it to the view
  end

def update
  @post = Post.find(params[:id])
	# Make the data secure
  if @post.update(post_params)
	# Save the data from the form
	# If it saves
	redirect_to @post
	else
	# render the edit page again
  render :edit
end
end

def destroy
	# Find the post for deleting
  @post = Post.find(params[:id]) 
	# Delete taht post
  @post.destroy
  
	redirect_to root_path
end

private
  #Only allow this stuff
  def post_params
    params.require(:post).permit(:title, :body, :publication, :url, :published_at, :author, :pull_quote)
  end
end
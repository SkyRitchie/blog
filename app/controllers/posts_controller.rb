class PostsController < ApplicationController
before_action :find_post, except: [:index, :new, :create]

  def index
  	# We assign an instance variable
  	@posts = Post.all
  	# Rails sends it to the view (index)
  	#Rails renders the view (index)
  end



  def show
  	#We assign an instance variable
  	#Rails sends it to the view if it's there (show)
  	#Rails renders the view

    #Look for comments on this post
    @comments = @post.comments.all
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
  	# Rails gives it to the view
  end

def update
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
	# Delete taht post
  @post.destroy
  
	redirect_to root_path
end

private
  #Only allow this stuff
  def post_params
    params.require(:post).permit(:title, :body, :publication, :url, :published_at, :author, :pull_quote)
  end


def find_post
    @post = Post.find(params[:id])
  end

end
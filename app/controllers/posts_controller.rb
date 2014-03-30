class PostsController < ApplicationController

before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
    	md5_of_password = Digest::MD5.hexdigest(password)
      username == 'eckho28' && md5_of_password == 'e44546017302faa1309e4ccfb8293842'
    end
  end

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		#in console: post.create(:title +> 'insert title', :description => 'insert description')
		Post.create( post_params )
		redirect_to posts_path


	end

	private

	def post_params
		params.require(:post).permit(:title, :description, :DL)
	end


end

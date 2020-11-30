class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end
    def create
        @post = current_user.posts.create(post_params)
        @post.save
        @post.errors.full_messages
        redirect_to posts_path

    end

    def post_params
        params.require(:post).permit(:description, :user_id)
      end
end

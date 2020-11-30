class PostsController < ApplicationController

    def index
        @posts = Post.all.order(created_at: :desc)
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

    def like
        @post = Post.all.find(params[:id])
        @post.liked_by current_user
        redirect_to posts_path
    end

    def unlike
        @post = Post.all.find(params[:id])
        @post.unliked_by current_user
        redirect_to posts_path
    end



    def post_params
        params.require(:post).permit(:description, :user_id)
      end
end

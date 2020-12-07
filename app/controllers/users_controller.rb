# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all.order(created_at: :desc)
    @friendships = Friendship.all.where.not(friend_id: @user.id)
    end
end

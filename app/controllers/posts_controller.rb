# frozen_string_literal: true

class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.published
  end

  def show
    @post = Post.friendly.find(params[:id])
  end
end

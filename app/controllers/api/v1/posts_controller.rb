module Api::V1
  class PostsController < ApplicationController
    # Generic API stuff here
    def index
      render json: $posts.values
    end

    def create
      # TODO: refactor the passing params
      # slice: fetch only valid params
      id = $posts.size + 1
      $posts[id.to_s] = Post.new(id: id, title: post_params[:title], summary: post_params[:summary], url: post_params[:url])
    end

    private

    def post_params
      params.permit(:title, :summary, :url, :img_url)
    end
  end
end

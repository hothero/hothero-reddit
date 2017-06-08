module Api::V1
  class PostsController < ApplicationController
    # Generic API stuff here
    def index
      render json: $posts.values
    end

    def popular
      render json: sort_by_vote_count($posts.values)
    end

    def search
      render json: sort_by_vote_count($posts.values.find_all { |post| post.title.include?(params[:keyword]) })
    end

    def clear
      $posts = {}
      render json: $posts.values
    end

    def random
      for _ in 1..10
        id = $posts.size + 1
        $posts[id.to_s] = Post.new(id: id, title: Faker::Name.name_with_middle, summary: Faker::Lorem.paragraph(2), url: Faker::Internet.url, vote_count: rand(100))
      end

      render json: sort_by_vote_count($posts.values)
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

    def sort_by_vote_count(posts)
      posts.sort_by { |post| -post.vote_count }
    end
  end
end

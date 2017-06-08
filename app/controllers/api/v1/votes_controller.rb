module Api::V1
  class VotesController < ApplicationController
    # ruby is strictly called by value

    def up
      post_id = params[:id]
      return if $posts[post_id].blank?

      $posts[post_id].vote_count += 1
    end

    def down
      post_id = params[:id]
      return if $posts[post_id].blank?

      $posts[post_id].vote_count -= 1 if $posts[post_id].vote_count > 0
    end
  end
end

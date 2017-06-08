Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace :v1 do
      resources :posts do
        member do
          get "upvote", to: "votes#up"
          get "downvote", to: "votes#down"
        end

        collection do
          get "popular", to: "posts#popular"
          get "search", to: "posts#search"
          get "clear", to: "posts#clear"
          get "random", to: "posts#random"
        end
      end
    end
  end
end

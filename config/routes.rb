Rails.application.routes.draw do
  resources :negative_posts
  resources :positive_posts do
    patch 'transfer', on: :member, to: 'positive_posts#transfer'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

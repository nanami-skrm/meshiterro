Rails.application.routes.draw do
  devise_for :users
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show] do
  	resource :favorites, only: [:create, :destroy] #resource(単数形)にするとそのコントローラーのidがリクエストに含まれない？
  	resources :post_comments, only: [:create, :destroy] #詳細画像に対してコメントされるので、ネスト(親子関係)する？
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

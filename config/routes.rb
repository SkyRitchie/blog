Rails.application.routes.draw do
 root "posts#index"

resources :posts do
 resources :comments, only: [:new, :create, :destroy]
end


end

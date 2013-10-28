SalesSafari::Application.routes.draw do
  root "trackers#new"

  resources :trackers, only: [:new, :index]
end

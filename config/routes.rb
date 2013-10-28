SalesSafari::Application.routes.draw do
  root "trackers#new"
  resources :trackers, path: :t, only: [:new, :create, :show] do
    resources :subjects, only: [:create]
  end
end

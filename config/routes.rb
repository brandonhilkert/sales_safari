SalesSafari::Application.routes.draw do
  root "trackers#new"
  resources :trackers, path: :t, only: [:new, :create, :show] do
    resources :subjects, path: :s, only: [:create] do
      post :vote, on: :member
    end
  end
end

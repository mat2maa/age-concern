Rails.application.routes.draw do

  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/admin' => 'admin#index'
  get '/advice' => 'advices#show'
  get '/contacts' => 'contacts#show'
  get '/news' => 'news#show'
  get '/the-team' => 'the_teams#show'
  get '/what-we-offer' => 'what_we_offers#show'
  get '/your-support' => 'your_supports#show'

  namespace :admin do
    resources :your_supports, except: :show
    resources :news, except: :show
    resources :contacts, except: :show
    resources :advices, except: :show
    resources :the_teams, except: :show
    resources :what_we_offers, except: :show
  end

end

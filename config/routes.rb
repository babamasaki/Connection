Rails.application.routes.draw do
  
  devise_for :companies, controllers: {
  	sessions:   'companies/sessions',
  	passwords:  'companies/passwords',
  	registrations: 'companies/registrations'
  }
  devise_for :users,  controllers: {
  	sessions:   'users/sessions',
  	passwords:  'users/passwords',
  	registrations: 'users/registrations'
  }

  # devise_scope :company do
  #   get 'top' => 'companies/registrations#top'
  # end
  get 'top' => 'companies#top',as: "top"
  resources :message, only: [:new, :edit, :update, :create, :destroy]
  resources :ad_job_listings, only: [:new, :index, :create, :show, :edit, :update, :destroy]
  resources :companies, only: [:edit, :update, :destroy]
  resources :entries, only: [:index, :create, :show]
  resources :job_listings, only: [:index, :create, :show]
  get 'job_listing_cmp' => 'job_listings#job_listing_cmp'
  resources :users, only: [:edit, :update, :show]
  get 'mypage' => 'users#mypage'
  root to: 'users#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

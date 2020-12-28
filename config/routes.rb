Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  
  get 'home/index'
  root to: "home#index"

#  devise_for :user do
#    get 'administrators/index' => 'administrators#index'
#  end

  # administrators
  get 'administrators/index'
  get 'administrators/new'
  get 'administrators/update/:id', to: 'administrators#update', as: 'administrators_update'
  post 'administrators/new_confirm'
  patch 'administrators/update_confirm/:id', to: 'administrators#update_confirm', as: 'administrators_update_confirm'
  #post 'administrators/update_confirm/:id', to: 'administrators#update_confirm', as: 'administrators_update_confirm'
  post 'administrators/new_complete'
  post 'administrators/update_complete'
  get 'administrators/detail/:id', to: 'administrators#detail', as: 'administrators_detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

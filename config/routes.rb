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

  # skill_sheets
  get 'skill_sheets/index'
  get 'skill_sheets/detail/:id', to: 'skill_sheets#detail', as: 'skill_sheets_detail'
  get 'skill_sheets/new'
  post 'skill_sheets/create'
  get 'skill_sheets/edit/:id', to: 'skill_sheets#edit', as: 'skill_sheets_edit'
  patch 'skill_sheets/update'
  get 'skill_sheets/delete/:id', to: 'skill_sheets#delete', as: 'skill_sheets_delete'
  get 'skill_sheets/export'
  get 'skill_sheets/list'

end

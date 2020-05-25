Rails.application.routes.draw do

  root 'service_type_name#new'
  get "new" => "service_type_name#new"
  post "new" => "service_type_name#new"
  get "create" => "service_type_name#create"
  post "create" => "service_type_name#create"
  get "index" => "service_type_name#index"
  #post "show" => "service_type_name#show"
  get 'show/:id', to: 'service_type_name#show', as: 'show'
  get 'edit/:id', to: 'service_type_name#edit', as: 'edit'
  #patch 'update/:id' , to: 'service_type_name#update', as: 'update'
  post 'update/:id' , to: 'service_type_name#update', as: 'update'
  delete 'destroy/:id' , to: 'service_type_name#destroy', as: 'destroy'
  get 'all_points_service_type_name', to: 'service_type_name#all_item'
  post "create_user" => "user_info#create_user"
  get "new_user" => "user_info#new_user"
  delete 'destroy_user/:id' , to: 'user_info#destroy_user', as: 'destroy_user'
  post 'update_user/:id' , to: 'user_info#update_user', as: 'update_user'
  get 'edit_user/:id', to: 'user_info#edit_user', as: 'edit_user'
  get "index_user" => "user_info#index_user"
  get "all_user_item" => "user_info#all_user_item"
  get "one_user_info" => "user_info#one_user_info"
  get "finduserbyname" => "user_info#finduserbyname"
  get "create_new_user" => "user_info#create_new_user"
  get 'updateNewUser' => 'user_info#updateNewUser', as: 'updateNewUser'
   #resources :service_type_name do
  #resources :user_info
   #end
end

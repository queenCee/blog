Rails.application.routes.draw do
  #get 'comments/new' => "comments#new"
	#get'comments/create', as: 'comments'
	 post 'comments/create' => "comments#create", as: "comments"
  


  resources :posts do
  	resources :comments
  end


  devise_for :users
  
  root "posts#index"
  #  get 'posts/:id/edit' => "posts#edit", as: "post_edit"
  # patch 'posts/:id/update' => "posts#update"

 
  

 	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

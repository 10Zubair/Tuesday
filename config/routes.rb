Rails.application.routes.draw do
  
  devise_for :admin_users, controllers: {
    sessions: "admin_users/sessions",
    registrations: "admin_users/registrations",
    passwords: "admin_users/passwords",
  }
  root "welcome#index"

  #resources :students

  namespace :admin do
    resources :students
    resources :projects
    resources :courses
  
    resources :blogs
    get "dashboard" => "dashboard#index"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root "welcome#index"

  
  # resources :students do
  # 	member do
  # 		get :personal_details
  # 	end
  # 	# get :personal_details, on: :member
  # 	collection do
  # 		get :active

  # 		# get :active, on: :collection
  # 	end
  # end
  # resources :blogs


  # get "welcome/about"

  # namespace :admin do
  # 	resources :students
  # end

  # # scope :admin do
  # # 	resources :students
  # # end

end

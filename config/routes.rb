Rails.application.routes.draw do
  root 'posts#index'
  resources :users
  resources :posts do 
    resources :comments
  end 

  # resources :home do 
  #   collection do 
  #     get :truth
  #     get :dare
  #   end
  # end 

  # resources :students do
  #   member do 
  #     get :student_details
  #     post :student_details
  #   end 
  # end

  # scope :admin do 
  #   resources :users
  # end

  # namespace :admin do 
  #   resources :users
  # end
end

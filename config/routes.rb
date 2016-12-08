Rails.application.routes.draw do
  
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                     controllers: {omniauth_callbacks: "omniauth_callbacks"}  
  resources :todo_lists do
    resources :todo_items do
      member do 
        patch :complete
      end  
    end
  end
    
  root to: "todo_lists#index"

end

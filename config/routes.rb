Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :goals
        resources :job_opportunities
        resources :blogs
      end
    end
  end
  
end

Rails.application.routes.draw do
  resources :job_opportunities
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :goals
      end
    end
  end
  
end

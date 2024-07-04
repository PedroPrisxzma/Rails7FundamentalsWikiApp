Rails.application.routes.draw do
  namespace :wiki_posts do #This has to be custom because it is not a direct CRUD action
    get 'example'
  end
  resources :wiki_posts #this expects CRUD actions

  namespace :welcome do
    get 'index'
    get 'about'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: redirect('welcome/about')
  # Defines the root path route ("/")
  root "welcome#index"
end

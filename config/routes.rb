Rails.application.routes.draw do
  get 'submit_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'
end

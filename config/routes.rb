Rails.application.routes.draw do
  get 'submit_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  get 'images/:id' => 'images#show'
  post 'images' => 'images#create'

  get 'images/:id/download' => 'images#download'
  put 'images/:id/upload' => 'images#upload'
end

Rails.application.routes.draw do
  resources :face_detections
  root 'application#hello'
end

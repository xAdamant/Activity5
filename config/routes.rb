Rails.application.routes.draw do
  resources :android_ng_bayans
  get 'android_ng_bayans/:id/sold' => 'android_ng_bayans#sold'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

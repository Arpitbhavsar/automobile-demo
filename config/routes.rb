Rails.application.routes.draw do
  
  get 'home/index'
  root "home#index"
  get '/contact-us' => "home#contact_us"
  get '/booking-vehical' => "home#bookings_bike"
  get '/booking-service' => "home#bookings_service"
  get '/press-release' => "home#press_release"
resources :bike_modals

  namespace :admins do
    resources :bike_modals
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

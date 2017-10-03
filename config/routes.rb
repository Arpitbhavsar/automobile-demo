Rails.application.routes.draw do
  get 'home/index'
  root "home#index"
  get '/contact-us' => "home#contact_us"
  get '/booking-vehical' => "home#bookings_bike"
  get '/booking-service' => "home#bookings_service"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

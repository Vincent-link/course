Rails.application.routes.draw do
   namespace :api, :defaults => { :format => :json } do
     namespace :v1 do
       get "/students"  => "students#index", :as => :students
       get "/students/:id" => "students#show", :as => :student

       get "/cous"  => "cous#index", :as => :cous
       get "/cous/:id" => "cous#show", :as => :cou
       
       post "/lessons" => "lessons#create", :as => :create_lessons
       patch "/reservations/:booking_code" => "reservations#update", :as => :update_reservation
       delete "/reservations/:booking_code" => "reservations#destroy", :as => :cancel_reservation
     end
   end
end

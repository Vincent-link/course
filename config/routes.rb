Rails.application.routes.draw do
   namespace :api, :defaults => { :format => :json } do
     namespace :v1 do
       get "/students"  => "students#index", :as => :students
       get "/students/:id" => "students#show", :as => :student

       get "/teachers"  => "teachers#index", :as => :teachers
       get "/teachers/:id" => "teachers#delete", :as => :teacher
     end
   end
end

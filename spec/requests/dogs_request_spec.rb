require 'rails_helper'

RSpec.describe "Dogs", type: :request do
    it "gets a list of Dogs" do
      Dog.create(name: 'Felix', age: 2, enjoys: 'Walks in the park')
      get '/dogs'
      json = JSON.parse(response.body)
      expect(response).to have_http_status(:ok)
      expect(json.length).to eq 1
    end

    it "creates a dog" do
     dog_params = {
       dog: {
         name: 'Buster',
         age: 4,
         enjoys: 'plenty of sunshine.'
       }
     }
     post '/dogs', params: dog_params
     expect(response).to have_http_status(:ok)
     new_dog = Dog.first
     expect(new_dog.name).to eq('Buster')
   end

   it "doesn't create a dog without a name" do
     dog_params = {
       dog: {
         age: 4,
         enjoys: 'playing ball in the park'
       }
     }
     post '/dogs', params: dog_params
     expect(response.status).to eq 422
     json = JSON.parse(response.body)
     expect(json['name']).to include "can't be blank"
   end

   it "doesn't create a dog without an age" do
     dog_params = {
       dog: {
         name: 'Henny',
         enjoys: 'playing ball in the park'
       }
     }
     post '/dogs', params: dog_params
     expect(response.status).to eq 422
     json = JSON.parse(response.body)
     expect(json['age']).to include "can't be blank"
   end

   it "doesn't create a dog without enjoys" do
     dog_params = {
       dog: {
         name:'Henny',
         age: 4
       }
     }
     post '/dogs', params: dog_params
     expect(response.status).to eq 422
     json = JSON.parse(response.body)
     expect(json['enjoys']).to include "can't be blank"
   end
end

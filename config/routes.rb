InternationsBackend::Application.routes.draw do

  namespace :api, :defaults => {:format => :json} do
    get    "/users",  to: "users#index"
    post   "/users",  to: "users#create"
    get    "/groups", to: "groups#index"
    post   "/groups", to: "groups#create"
    delete "/users",  to: "users#destroy"
    delete "/groups", to: "groups#destroy"
  end
end

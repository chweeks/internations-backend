InternationsBackend::Application.routes.draw do
    get    "/users",  to: "users#index"
    post   "/users",  to: "users#create"
    get    "/groups", to: "groups#index"
    post   "/groups", to: "groups#create"
    delete "/users",  to: "users#destroy"
    delete "/groups", to: "groups#destroy"
    get    "/test",   to: "users#test"
end

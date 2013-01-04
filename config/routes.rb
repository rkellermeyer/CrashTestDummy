Sandbox::Application.routes.draw do
  resources :crash_tests
  resources :crash_test_dummies
  root :to => 'crash_tests#index'
end

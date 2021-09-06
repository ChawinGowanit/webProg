Rails.application.routes.draw do
  get 'post/create'
  get 'ex2/loop'
  get 'main/abc'
  get 'main/xyz'
  get 'main/welcome'
  get 'main/contact'
  get 'user/read'
  get 'post/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "abc", to: "main#abc"
  get "YM" , to: "main#xyz"
  get "welcome" , to: "main#welcome"
  get "contact_us", to: "main#contact"
  get "loop", to: "ex2#loop"
end

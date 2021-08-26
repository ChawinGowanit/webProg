Rails.application.routes.draw do
  get 'main/abc'
  get 'main/xyz'
  get 'main/welcome'
  get 'main/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "abc", to: "main#abc"
  get "YM" , to: "main#xyz"
  get "welcome" , to: "main#welcome"
  get "contact_us", to: "main#contact"
end

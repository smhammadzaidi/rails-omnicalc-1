Rails.application.routes.draw do
  get "/", controller: "pages", action: "home"

  get "/square/new", controller: "calc", action: "square"

  get "/square_root/new", controller: "calc", action: "squareroot"

  get "/payment/new", controller: "calc", action: "payment"

  get "random/new", controller: "calc", action: "random"


  get "/square/result", controller: "calc", action: "square_result"

  get "/square_root/result", controller: "calc", action: "squareroot_result"

  get "/payment/result", controller: "calc", action: "payment_result"

  get "/random/result", controller: "calc", action: "random_result"
  
end

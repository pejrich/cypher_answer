Rails.application.routes.draw do
  root to: "cyphers#root"
  get "decrypt", to: "cyphers#decrypt"
  get "encrypt", to: "cyphers#encrypt"
end

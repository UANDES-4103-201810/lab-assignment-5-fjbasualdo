Rails.application.routes.draw do
  POST 'tickets', to: 'users#create'

  DELETE '/tickets/:id', to: 'tickets#destroy' as: 'ticket'

  PATCH '/tickets/:id', to: 'tickets#update' as: 'ticket'

  GET '/tickets/:id', to: 'tickets#show' as: 'ticket'

  GET '/tickets/most_expensives', to: 'tickets#most_expensives'
  

  POST 'places', to: 'users#create'

  DELETE '/places/:id', to: 'places#destroy' as: 'place'

  PATCH '/places/:id', to: 'places#update' as: 'place'

  GET '/places/:id', to: 'places#show' as: 'place'

  GET '/places/more_assistance', to: 'places#more_assistance'


  POST 'events', to: 'users#create'

  DELETE '/events/:id', to: 'events#destroy' as: 'event'

  PATCH '/events/:id', to: 'events#update' as: 'event'

  GET '/events/:id', to: 'events#show' as: 'event'

  GET '/events/more_bought_less_paid', to: 'events#more_bought_less_paid'


  POST 'users', to: 'users#create'

  DELETE '/users/:id', to: 'users#destroy' as: 'user'

  PATCH '/users/:id', to: 'users#update' as: 'user'

  GET '/users/:id', to: 'users#show' as: 'user'

  GET '/users/more_tickets_boughts', to: 'users#more_tickets_boughts'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

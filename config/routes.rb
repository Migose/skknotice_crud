Rails.application.routes.draw do
  root 'notes#index'
  # Create
  get '/notes/new' => 'notes#new'

  post '/notes' => 'notes#create'

  # Read
  get '/notes' => 'notes#index'

  get '/notes/:id' =>'notes#show'

  # Update
  get '/notes/edit/:id' => 'notes#edit'

  patch '/notes' => 'notes#update'

  # Destroy
  delete '/notes/:id' => 'notes#delete'

end

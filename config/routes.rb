Rails.application.routes.draw do
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'lists/new'
  get 'top' => 'home#top'
  resources :lists#今まで記述したものこれ一つで完了
  #post 'lists' => 'lists#create'
  #get 'lists' => 'lists#index'
  # .../lists/1 や .../lists/3 に該当する
  #get 'lists/:id' => 'lists#show', as: 'list'#←に書き換えget 'lists/:id' => 'lists#show'
  #get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  #patch 'lists/:id' => 'lists#update', as: 'update_list'
  #delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'

end
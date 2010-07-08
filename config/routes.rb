ActionController::Routing::Routes.draw do |map|
  
  map.resources :remixes
  
  map.upload 'upload', :controller => 'remixes', :action => 'new'
  
  map.popular 'popular', :controller => 'remixes', :action => 'index', :sort => "votes_count DESC"
  
  map.start_upload 'start_upload', :controller => 'remixes', :action => 'start_upload'
  
  map.vote ':id/vote', :controller => 'votes', :action => 'create'
  
  map.status ':id/status', :controller => 'remixes', :action => 'status'
  
  map.remix ':id.:format', :controller => 'remixes', :action => 'show', :requirements => {:id => /\d{1,6}/}
  
  map.root :controller => "remixes"
  
end

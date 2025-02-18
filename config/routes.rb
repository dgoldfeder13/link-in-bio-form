Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  
  post("/new_item", { :controller => "items", :action => "item_create" })

  get("/backdoor", { :controller => "items", :action => "create"})
end

class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def create
    render({ :template => "item_templates/backdoor"})
  end

  def item_create
    i = Item.new
    i.link_url = params.fetch("link_url_param")
    i.link_description = params.fetch("link_description_param")
    i.thumbnail_url = params.fetch("thumbnail_url_param")
    i.save
    #render({ :template => "item_templates/new_item_midway"})
    redirect_to("/")
  end
end

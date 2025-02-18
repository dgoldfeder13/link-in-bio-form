class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def create
    render({ :template => "item_templates/backdoor"})
  end
end

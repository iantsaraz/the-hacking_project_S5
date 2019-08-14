class DynamicPagesController < ApplicationController
  def landing_page
  end
  def show_gossip
  
  end
  
  def show_profile
    # id = params [:id]
    #   @gossips = Gossip.find(id)
  end 


  def new_gossip
  end
  
  def create_gossip
    # title = params ["title"]
    # content = params ["content"]
    #  Gossip.create title: params[:title], content: params[:content]
    #  redirect_to"/new"
  end
 end 

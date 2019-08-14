class GossipsController < ApplicationController
  def index
    @user = User.all
    @gossip = Gossip.all
  end

  def show
   @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 4) # avec xxx qui sont les données obtenues à partir du formulaire 
  if @gossip.save # essaie de sauvegarder en base @gossip
    flash[:success] = "gossip created!"
    redirect_to gossips_path
  else
    
    render 'new'
  end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = gossip.find(params[:id])

     
    if @gossip.update(title: params[:title], content: params[:content])
      redirect_to gossips_path
    else
      render 'edit'
    end
  end

  def destroy
    @gossip = gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossip_path, notice => "Votre potin a été suprimer"
  end
end

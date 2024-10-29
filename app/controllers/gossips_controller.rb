class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def single_gossip
    @gossip = Gossip.find(params[:gossip_id])
  end

  def new
    
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.user = User.find_by(name: "anonymous")

    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      flash[:notice] = 'The super potin was successfully saved!'
      redirect_to gossips_path
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
       flash[:alert] = 'Error: please check the fields below.'
    end
  end
  
  def gossip_params
    params.permit(:title, :content)
  end
end

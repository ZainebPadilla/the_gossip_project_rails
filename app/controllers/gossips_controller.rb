class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def single_gossip
    @gossip = Gossip.find params[:gossip_id]
  end
end
class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user: User.find_by(email: params[:email]))

    if @gossip.save
      flash[:notice] = "Gossip successfully created"
      redirect_to gossips_path
    else
      render 'new'
    end
    puts "#"*60
    puts params
    puts "#"*60
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
  end

  def destroy
  end
end

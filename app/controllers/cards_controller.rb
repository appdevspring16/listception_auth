class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new
    @card.list_id = params[:list_id]
    @card.name = params[:name]
    @card.description = params[:description]

    if @card.save
      redirect_to :back, :notice => "Card created successfully."
    else
      render 'new'
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])

    @card.list_id = params[:list_id]
    @card.name = params[:name]
    @card.description = params[:description]

    if @card.save
      redirect_to "/cards", :notice => "Card updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @card = Card.find(params[:id])

    @card.destroy

    redirect_to "/cards", :notice => "Card deleted."
  end
end

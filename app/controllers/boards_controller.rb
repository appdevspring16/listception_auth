class BoardsController < ApplicationController

  def index
    # @boards = Board.all
    # @boards = Board.where(:user_id => current_user.id)
    # the above is the long way to say it but we can do it shorter....
    #   to be able to easily traverse my user assocaitions
    #   would like to says
    # @boards = current_user.boards
    # can't do that yet because need to go into models into user.rb which was generated i think when we did devise, and say that user has many boards

    @boards = current_user.boards

  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new
    @board.user_id = params[:user_id]
    @board.name = params[:name]

    if @board.save
      redirect_to "/boards", :notice => "Board created successfully."
    else
      render 'new'
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])

    @board.user_id = params[:user_id]
    @board.name = params[:name]

    if @board.save
      redirect_to "/boards", :notice => "Board updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @board = Board.find(params[:id])

    @board.destroy

    redirect_to "/boards", :notice => "Board deleted."
  end
end

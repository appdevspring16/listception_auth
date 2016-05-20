class BoardsController < ApplicationController
  def index
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

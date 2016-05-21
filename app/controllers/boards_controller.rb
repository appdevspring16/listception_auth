class BoardsController < ApplicationController
  before_action :authenticate_user, ony: [:show, :edit, :update, :destroy]

  def authenticate_user
    # b.user_id = Board.find(params[:id]).user_id
    # if (b.user_id != current_user.id) && (current_user.admin != true)
    redirect_to "/", :alert => "You are not authorized"
  end

  def index
    if current_user.admin == true
      @board = Board.all
    else
      @board = current_user.boards
      # @boards = Board.all
    end
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

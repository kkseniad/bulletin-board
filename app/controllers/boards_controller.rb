class BoardsController < ApplicationController
  def index
    render({ :template => "board_templates/index" }) 
  end

  def show
    render({ :template => "board_templates/show" })
  end

  def create
    # params: {"name_param" => "Merch Mart"}

    @new_board = Board.new

    @new_board.name = params.fetch("name_param")

    @new_board.save

    # render({ :template => "board_templates/create_confirm" })

    redirect_to("/boards/#{@new_board.id}", { :notice => "Board created successfully." })
  end
end

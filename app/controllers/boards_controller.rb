class BoardsController < ApplicationController
  def index
    @list_of_boards = Board.all
    
    render({ :template => "board_templates/index"})
  end

  def show
    the_id = params.fetch("path_id")
    @the_board = Board.where({ :id => the_id }).at(0)

    render({ :template => "board_templates/show" })
  end
end

class BoardsController < ApplicationController
  def index
    @list_of_boards = Board.all
    
    render({ :template => "board_templates/index"})
  end
end

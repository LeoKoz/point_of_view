class BoardsController < AuthorizedController
  def new
  end
	
  def index
    @boards = Board.paginate(:page => params[:page])
    @title = "All boards"
  end
  
  def show
    @board = Board.find(params[:id])
    @themes = @board.themes.paginate(:page => params[:page])
    @title = @board.id
  end
end

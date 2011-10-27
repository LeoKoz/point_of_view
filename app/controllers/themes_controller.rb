class ThemesController < AuthorizedController
  def new
  end
	
  def create
  	board = Board.find(params[:board_id])
    @theme = current_user.themes.build(params[:theme])
    @theme.board = board
    if @theme.save
      redirect_to root_path, :flash => { :success => "Theme created!" }
    else
      @feed_items = []
      render 'pages/home'
    end
  end
  
  def destroy
  	@theme = Theme.find(params[:id])	
    @theme.destroy
    redirect_to root_path, :flash => { :success => "Theme deleted!" }
  end
  
  def take
  	#@theme = Theme.find(params[:id])	
   # @theme.destroy
    redirect_to root_path, :flash => { :success => "Theme taken!" }
  end
end

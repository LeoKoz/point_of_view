class ThemesController < AuthorizedController
  def new
  end
	
  def create
  	@theme.board = Board.find(params[:board_id])
    @theme = current_user.themes.build(params[:theme])
    
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
=begin
  def authorized_user
      @theme = current_user.themes.find_by_id(params[:id])
      redirect_to root_path if @theme.nil?
  end
=end
end

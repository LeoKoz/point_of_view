class StatementsController < ApplicationController
	
	def create
  	theme = Theme.find(params[:theme_id])
    @statement = current_user.statements.build(params[:theme])
    @statement.theme = theme
    if @statement.save
      redirect_to root_path, :flash => { :success => "Statement created!" }
    else
      @feed_items = []
      render 'pages/home'
    end
  end
  
  def destroy
  	@statement = Statement.find(params[:id])	
    @statement.destroy
    redirect_to root_path, :flash => { :success => "Statement deleted!" }
  end
end

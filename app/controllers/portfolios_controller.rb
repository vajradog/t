class PortfoliosController < ApplicationController
before_filter :authorize, only: [:new, :edit, :update, :destroy]
  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
     if @portfolio.save
       redirect_to portfolios_path, notice: "New Portfolio Added"
     else
       render 'new', notice: "Something wrong with a field"
     end

  end

   def index
    @portfolios = Portfolio.paginate(:page => params[:page], :per_page => 6)
  end

  def edit
  	@portfolio = Portfolio.find(params[:id])
  end

  def update
  	@portfolio = Portfolio.find(params[:id])
  	if @portfolio.update_attributes(portfolio_params)
  		redirect_to portfolios_path, notice: "Portfolio Updated"
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@portfolio = Portfolio.find(params[:id])
  	@portfolio.destroy
    redirect_to portfolios_path, notice: "Post Deleted"
  end

   def show
    @portfolio = Portfolio.find(params[:id])
  end


   private
  def portfolio_params
    params.require(:portfolio).permit(:title, :body, :image)
  end

end
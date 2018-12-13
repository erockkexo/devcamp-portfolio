class PortfoliosController < ApplicationController
 layout "portfolio"

  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_items = Portfolio.angular
  end  

  def new
    @portfolio_item = Portfolio.new
    #we need to make form elements available upon creation. That's why it's going here. As opposed to say, 
    #create where it wouldn't make sense. 
    #intantiates 3 versions of this portfolio item with technologies
    #I want you to create 3 types of technologies and make this available to the form

    3.times { @portfolio_item.technologies.build }

  end
# we need to make the form attributes available to the strong paramaters
# added technologies_attributes to the strong parameters (portfolio_params)
# Just names, if we had other attributes we would pass them in too. 

  def create


    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end



  def show
    @portfolio_item = Portfolio.find(params[:id])
  end




    def destroy
      #performs lookup
      @portfolio_item = Portfolio.find(params[:id])
      #destroys the record
    @portfolio_item.destroy
    respond_to do |format|

      #where to go after the destroy
      format.html { redirect_to portfolios_path, notice: "Record was removed." }
      format.json { head :no_content }
    end


    private 

    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body, 
                                        technologies_attributes: [:name])
    end


    end


end
class QuotesController < ApplicationController

    def index
        <!-- some sort of pagination ? -->
        @quotes = Quote.order(created_at: :desc)
    end

    def new 
        @quote = Quote.new
    end

    def create 
        @quote = Quote.new(quote_params)
        
        if @quote.save 
            redirect_to root_path, notice: 'Quote created!'
        else
            render :new
        end
    end

    private
        # params that are allowed for security
        def quote_params
            params.require(:quote).permit(:quotation)
        end

end
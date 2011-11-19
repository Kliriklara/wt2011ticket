class TicketsController < ApplicationController
  def index
  	@tickets = Ticket.all();
  end

  def show
	@ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
      end

  def create
    Ticket.create(:subject=>params[:ticket][:subject], :request=>params[:ticket][:request])
    
    redirect_to tickets_path
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update_attributes(:subject=>params[:ticket][:subject], :request=>params[:ticket][:request])

    redirect_to tickets_path
  end

  def destroy
    Ticket.find(params[:id]).destroy
    redirect_to tickets_path
  end

  
  
end

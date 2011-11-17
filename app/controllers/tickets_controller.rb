class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end
  
  def show
    @tickets = Ticket.find( params[:id] )
  end
  
  def create
    @tickets = Ticket.new( params[:ticket] ).save
    redirect_to tickets_path
  end
 
  def new
    @tickets = Ticket.new
  end

end
class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end
  
  def show
    @tickets = Ticket.find( params[:id] )
  end
  
  def new
    @tickets = Ticket.new
  end
  def create
    @tickets = Ticket.new( params[:ticket] ).save
    redirect_to tickets_path
  end

  def edit
    @tickets = Ticket.find( params[:id] )
  end
  def update
    @tickets = Ticket.find( params[:id] )
    @tickets.update_attributes( params[:ticket] )
    redirect_to tickets_path
  end
  
  def destroy
    @tickets = Ticket.find( params[:id] )
    @tickets.destroy
    redirect_to tickets_path
  end

end
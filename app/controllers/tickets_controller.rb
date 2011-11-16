class TicketsController < ApplicationController

 def index
  @tickets = Ticket.all
 end

 def show
  @ticket = Ticket.find(params[:id])
 end

 def create
  @ticket = Ticket.new(params[:ticket]).save
  redirect_to tickets_path
 end
 
 def new
  @ticket = Ticket.new
 end
 
 def edit
  @ticket = Ticket.find(params[:id])
 end
 
 def update
  @ticket = Ticket.find(params[:id])
  @ticket.update_attributes(params[:ticket])
  redirect_to tickets_path
 end
 
end

class TicketsController < ApplicationController

 def index
  @tickets = Ticket.all
 end

 def show
  @ticket = Ticket.find(params[:id])
 end

 def create
  @ticket = Ticket.new.save
  redirect_to tickets_path
 end
 
 def new
  @ticket = Ticket.new(params[:ticket])
 end
 
end

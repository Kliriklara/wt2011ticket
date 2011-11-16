class TicketsController < ApplicationController

 def index
  @tickets = Ticket.all
 end

 def show
  @ticket = Ticket.find(params[:id])
 end

 def create
  @ticket = Ticket.new
 end
 
 def new
  @ticket = Ticket.new(params[:ticket])
 end
 
end

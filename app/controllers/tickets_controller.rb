class TicketsController < ApplicationController
	def index
		@tickets = Ticket.all
	end
	
	def show
		@ticket = Ticket.find(params[:id])
	end
	
	def new
		@ticket = Ticket.new
	end
	
	def create		
		Ticket.create(params[:ticket])
		redirect_to Ticket
	end
	
	def edit
		@ticket = Ticket.find(params[:id])
	end
	
	def update
		ticket = Ticket.find(params[:id])
		ticket.update_attributes(params[:ticket])
		redirect_to Ticket
	end
	
	def destroy
		ticket = Ticket.find(params[:id])
		ticket.delete
		redirect_to Ticket
	end
end

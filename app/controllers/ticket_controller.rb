class TicketController < ApplicationController
  def index
	@tickets = Ticket.all
	respond_to do |format|
		format.html
	end
  end
  
  def show
	@ticket = Ticket.find(params[:id])
	respond_to do |format|
		format.html
	end
  end
  
  def edit
	@ticket = Ticket.find(params[:id])
  end
  
	def new
	  @ticket = Ticket.new
	end

  def create
	Ticket.create params[:ticket]
	redirect_to root_path
  end
  
  def update
    @ticket = Ticket.find(params[:id])
    respond_to do |format|
		if @ticket.update_attributes(params[:ticket])
		  format.html  { redirect_to(@ticket,
						:notice => 'Ticket was successfully updated.') }
		  format.json  { render :json => {}, :status => :ok }
		else
		  format.html  { render :action => "edit" }
		  format.json  { render :json => @ticket.errors,
						:status => :unprocessable_entity }
		end
	  end
  end
  
  def delete
	Ticket.find(params[:id]).destroy
	redirect_to root_path
  end
end

class TicketsController < ApplicationController
  def index
  	@tickets = Ticket.all();
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
	@ticket = Ticket.find(params[:id])
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @ticket = Ticket.new
  end

  # GET /articles/1/edit
  def edit
    @ticket = Ticket.find(params[:id])
      end

  # POST /articles
  # POST /articles.json
  def create
    Ticket.create(:subject=>params[:ticket][:subject], :request=>params[:ticket][:request])
    
    redirect_to tickets_path
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update_attributes(:subject=>params[:ticket][:subject], :request=>params[:ticket][:request])

    redirect_to tickets_path
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    Ticket.find(params[:id]).destroy
    redirect_to tickets_path
  end

  
  
end

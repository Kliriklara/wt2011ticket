TicketApp::Application.routes.draw do

  get "tickets/show"

  get "tickets/detail"

	resources :tickets
	
end

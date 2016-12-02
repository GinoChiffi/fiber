class DashboardsController < ApplicationController

def edit
end

def show
  @dashboard = Dashboard.find(params[:id])
end


def update
end

end

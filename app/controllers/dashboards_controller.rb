class DashboardsController < ApplicationController
    http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: [:index]
    def index
        @q = Project.ransack(params[:q])
        @projects = @q.result(distinct: true)
    end
end
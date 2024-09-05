class ServicesController < ApplicationController
    def index
        @services = Service.all
    end

    def show
        @service = Service.find(params[:id])
    end

    def new
        @service = Service.new
    end

    def create
        @service = Service.new(servie_params)
        if @service.save
            redirect_to services_path
        else
            render :new, status: :unprocessable_entity
        end 
    end

    def edit
        @service = Service.find(params[:id])       
    end

    def update
        @service = Service.find(params[:id])
        if @service.save
            redirect_to services_path
        else
            render :new, status: :unprocessable_entity
        end 
    end

    def destroy
        @service = Service.find(params[:id])
        redirect_to services_path, status: :see_other
    end

    private

    def service_params
        params.require(:service).permit(:title, :description)
    end
end

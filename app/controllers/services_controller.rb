class ServicesController < ApplicationController
    skip_before_action :authenticate_user!
    def index
        @services = policy_scope(Service)
    end

    def show
        @service = Service.find(params[:id])
        authorize @service
    end

    def new
        @service = Service.new
        authorize @service
    end

    def create
        @service = Service.new(servie_params)
        authorize @service
        if @service.save
            redirect_to services_path
        else
            render :new, status: :unprocessable_entity
        end 
    end

    def edit
        authorize @service
        @service = Service.find(params[:id])       
    end

    def update
        authorize @service
        @service = Service.find(params[:id])
        if @service.save
            redirect_to services_path
        else
            render :new, status: :unprocessable_entity
        end 
    end

    def destroy
        authorize @service
        @service = Service.find(params[:id])
        redirect_to services_path, status: :see_other
    end

    private

    def service_params
        params.require(:service).permit(:title, :description)
    end
end

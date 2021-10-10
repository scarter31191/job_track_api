module Api
  module V1
    class JobOpportunitiesController < ApplicationController
      before_action :set_job_opportunity, only: [:show, :update, :destroy]
    
      # GET /job_opportunities
      def index
        @job_opportunities = JobOpportunity.all
    
        render json: @job_opportunities
      end
    
      # GET /job_opportunities/1
      def show
        render json: @job_opportunity
      end
    
      # POST /job_opportunities
      def create
        @job_opportunity = JobOpportunity.new(job_opportunity_params)
    
        if @job_opportunity.save
          render json: @job_opportunity, status: :created, location: @job_opportunity
        else
          render json: @job_opportunity.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /job_opportunities/1
      def update
        if @job_opportunity.update(job_opportunity_params)
          render json: @job_opportunity
        else
          render json: @job_opportunity.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /job_opportunities/1
      def destroy
        @job_opportunity.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_job_opportunity
          @job_opportunity = JobOpportunity.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def job_opportunity_params
          params.require(:job_opportunity).permit(:position, :company, :status, :link_to_position, :notes, :user_id)
        end
    end    
  end
end

module Api
  module V1
    class GoalsController < ApplicationController
      before_action :set_user
      before_action :set_goal, except: [:index] #allows to just show the index
    
      # GET /goals
      def index
        @goals = @user.goals
    
        render json: @goals
      end
    
      # GET /goals/1
      def show
        render json: @goal
      end
    
      # POST /goals
      def create
        @goal = Goal.new(goal_params)
    
        if @goal.save
          render json: @goal, status: :created, location: @goal
        else
          render json: @goal.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /goals/1
      def update
        if @goal.update(goal_params)
          render json: @goal
        else
          render json: @goal.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /goals/1
      def destroy
        @goal.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_goal
          @goal = Goal.find(params[:id])
        end
        
        def set_user
          @user = User.find(params[:user_id])
        end
        # Only allow a trusted parameter "white list" through.
        def goal_params
          params.require(:goal).permit(:user_id, :goals, :status, :notes)
        end
    end
  end
end

# http://localhost:3000/api/v1/users/1/goals

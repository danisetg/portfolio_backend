class GroupsController < ApplicationController
    before_action :set_group, only: [:update, :show, :destroy]
    def create
        @group = Group.new(group_params)
        if @group.save
            render json: @group, status: :created
        else
            render json: @group.errors, status: :unprocessable_entity
        end
    end

    def index
        @groups = Group.all
        render json: @groups, status: :ok
    end

    def update
        if @group.update(group_params)
            render json: @groups, status: :ok
        else 
            render json: @group.errors, status: :unprocessable_entity
        end
    end

    def show
        render json: @group
    end

    def destroy
        if @group.destroy
            head :no_content
        else
            render json: @group.errors, status: :unprocessable_entity
        end
    end
    def group_params
        params.require(:group).permit(:title)
    end

    def set_group
        @group = Group.find(params[:id])
    end
end

class SkillsController < ApplicationController
    before_action :set_skill, only: [:update, :show, :destroy]
    def create
        @skill = Skill.new(skill_params)
        if @skill.save
            render json: @skill, status: :created
        else
            render json: @skill.errors, status: :unprocessable_entity
        end
    end

    def index
        @skills = Skill.all
        render json: @skills, status: :ok
    end

    def update
        if @skill.update(skill_params)
            render json: @skills, status: :ok
        else 
            render json: @skill.errors, status: :unprocessable_entity
        end
    end

    def show
        render json: @skill
    end

    def destroy
        if @skill.destroy
            head :no_content
        else
            render json: @skill.errors, status: :unprocessable_entity
        end
    end
    def skill_params
        params.require(:skill).permit(:name, :percent, :group_id)
    end

    def set_skill
        @skill = Skill.find(params[:id])
    end
end

class SkillsController < ApplicationController
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

    def skill_params
        params.require(:skill).permit(:name, :percent)
    end
end

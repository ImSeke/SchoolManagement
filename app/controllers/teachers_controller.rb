# frozen_string_literal: true

class TeachersController < ApplicationController
  load_and_authorize_resource
  before_action :set_teacher, only: %i[show]

  def index
    @teachers = Teacher.all
  end

  def show; end

  # def edit; end

  # def update
  #   if @teacher.update(teacher_params)
  #     flash[:success] = 'Teacher was successfully updated'
  #     redirect_to teacher_path(@teacher)
  #   else
  #     render 'edit', status: :unprocessable_entity
  #   end
  # end

  # def create
  #   @teacher = teacher.new(teacher_params)
  #   if @teacher.save
  #     flash[:success] = 'Teacher was successfully created'
  #     @teacher.welcome_email
  #     redirect_to teacher_path(@teacher)
  #   else
  #     render 'new', status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @teacher.destroy
  #   flash[:danger] = 'Teacher was successfully deleted'
  #   redirect_to teachers_path # status: :unprocessable_entity
  # end

  private

  def set_teacher
    @teacher = Teacher.find_by_id(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :email, :password)
  end
end

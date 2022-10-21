class LessonsController < ApplicationController
  load_and_authorize_resource
  before_action :set_lesson, only: %i[edit]

  def new
    @lesson = Lesson.new
  end

  # def show; end

  def edit; end

  def update
    if @lesson.update(lesson_params)
      teacher = Teacher.find(params[:lesson][:teacher_id])
      flash[:success] = 'Lesson was successfully updated'
      redirect_to teacher_path(teacher)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:success] = 'Lesson was successfully created'
      teacher = Teacher.find_by_id(params[:lesson][:teacher_id])
      redirect_to teacher_path(teacher)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    teacher = @lesson.teacher_id
    @lesson.destroy
    flash[:danger] = 'Lesson was successfully deleted'
    redirect_to teacher_path(teacher) # status: :unprocessable_entity
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:location, :hour, :day, :group_id, :course_id, :teacher_id)
  end
end

# frozen_string_literal: true

class StudentsController < ApplicationController
  load_and_authorize_resource

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end
end

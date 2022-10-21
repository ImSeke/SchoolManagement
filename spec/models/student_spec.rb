require 'rails_helper'
require_relative '../support/devise'

RSpec.describe 'StudentsController', type: :request do
  before(:each) do
    @group = FactoryBot.create(:group)
    @student = FactoryBot.create(:student)
    sign_in @student
  end
  describe 'Test Studentscontroller' do
    it 'can get index' do
      get students_path
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end
    # it 'can update a teacher' do
    #   put teacher_path(@teacher, params: { teacher: { name: "antonio" }})
    #   @teacher.reload
    #   expect(response).to have_http_status(302)
    #   expect(@teacher.name).to eq("antonio")
    #   expect(@teacher.email).to eq(@teacher.email)
    # end
    it 'can get edit' do
      get edit_user_registration_path(@student.id)
      expect(response).to render_template(:edit)
    end
    it 'can get show' do
      get student_path(@student.id)
      expect(response).to render_template(:show)
    end
  end
end

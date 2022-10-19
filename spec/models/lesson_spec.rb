require 'rails_helper'
require_relative '../support/devise'


RSpec.describe "TeachersController", type: :request do
  before(:each) do
    @teacher = FactoryBot.create(:teacher)
    sign_in @teacher
  end
  describe "Test Teacherscontroller" do
    it "can get index" do
      get teachers_path
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end
    it 'can update a teacher' do
      put teacher_path(@teacher, params: { teacher: { name: "antonio" }})
      @teacher.reload
      expect(response).to have_http_status(302)
      expect(@teacher.name).to eq("antonio")
      expect(@teacher.email).to eq(@teacher.email)
    end
    it "get edit teacher form" do
      get edit_teacher_path(@teacher.id)
      expect(response).to render_template(:edit)
    end
  end
end

require 'rails_helper'
require_relative '../support/devise'

RSpec.describe 'LessonsController', type: :request do
  before(:each) do
    @course = FactoryBot.create(:course)
    @group = FactoryBot.create(:group)
    @teacher = FactoryBot.create(:teacher)
    @lesson = FactoryBot.create(:lesson)
    sign_in @teacher
  end
  describe 'Test Lessonscontroller' do
    it 'can create a lesson' do
      post lessons_path(params: { lesson: { location: 'Urithiru', hour: 'Fri, 14 Oct 2022 18:00:00 +0000', day: 'monday', teacher_id: @teacher.id, group_id: @group.id, course_id: @course.id } })
      expect(response).to have_http_status(302)
    end

    it 'can get new lesson' do
        get new_lesson_path(params: { lesson: { location: 'Urithiru', hour: 'Fri, 14 Oct 2022 18:00:00 +0000', day: 'monday', teacher_id: @teacher.id, group_id: @group.id, course_id: @course.id } })
        expect(response).to have_http_status(200)
      end

    it 'can get edit' do
      get edit_lesson_path(@lesson.id)
      expect(response).to render_template(:edit)
    end

    it 'can update a lesson' do
      put lesson_path(@lesson, params: { lesson: { location: 'Urithiru', hour: 'Fri, 14 Oct 2022 14:00:00 +0000', day: 'monday', teacher_id: @teacher.id, group_id: @group.id, course_id: @course.id } })
      @lesson.reload
      expect(response).to have_http_status(302)
      expect(@lesson.location).to eq('Urithiru')
      expect(@lesson.day).to eq(@lesson.day)
    end

    it 'can destroy' do
      delete "/lessons/#{@lesson.id}"
      expect(response).to have_http_status(302)
    end
  end
end

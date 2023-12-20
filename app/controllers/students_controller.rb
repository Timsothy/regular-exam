class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    @tests = @student.tests.order('test_name_id DESC')
  end
end

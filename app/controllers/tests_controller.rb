class TestsController < ApplicationController
  before_action :authenticate_student!, only: [:new, :create]

  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end
  
  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
  end

  def update
  end

  def destroy
  end

  private
  def test_params
    params.require(:test).permit(:test_name_id, :japanese_score, :japanese_average_score, :mathematics_score, :mathematics_average_score,  :english_score, :english_average_score, :sosial_score, :sosial_average_score, :science_score, :science_average_score, :total_score, :rank).merge(student_id: current_student.id)
  end
end

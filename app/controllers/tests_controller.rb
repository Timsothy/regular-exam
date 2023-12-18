class TestsController < ApplicationController
  before_action :authenticate_student!, only: [:new, :create, :edit, :destroy]
  before_action :set_test, only: [:edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]

  def index
    @tests = Test.order("created_at DESC")
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
    if @test.update(test_params)
      redirect_to student_path(@test.student)
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to root_path
  end

  private
  def test_params
    params.require(:test).permit(:test_name_id, :japanese_score, :japanese_average_score, :mathematics_score, :mathematics_average_score,  :english_score, :english_average_score, :sosial_score, :sosial_average_score, :science_score, :science_average_score, :total_score, :rank).merge(student_id: current_student.id)
  end

  def set_test
    @test = Test.find(params[:id])
  end

  def move_to_index
    return if current_student == @test.student

    redirect_to action: :index
  end
end

class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end
  
  def create
    Test.create(test_params)
  end
  
  def edit
  end

  def update
  end

  def destroy
  end
end

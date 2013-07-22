class TopicsController < ApplicationController
  before_filter :find_topic, only: [:show, :edit, :update, :destroy]
  # GET /topics
  def index
    @topics = Topic.all
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Topic.new(params[:topic])
    if @topic.save
      redirect_to @topic, notice: 'How To Topic was successfully created.'    
    else
      flash[:alert] = "How To Topic was not created."
      render action: "new"
    end
  end

  def show
  end

  # GET /topics/1/edit
  def edit
  end

  def update
    if @topic.update_attributes(params[:topic])
      redirect_to @topic, notice: 'How To Topic was successfully updated.'
    else
      flash[:alert] = "How To Topic has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @topic.destroy
    flash[:notice] = "How To Topic has been deleted."
    redirect_to topics_path
  end

  private
    def find_topic
      @topic = Topic.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The How To Topic you were looking for could not be found."
      redirect_to topics_path
    end
end

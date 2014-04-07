class FeedbackItemsController < ApplicationController
  before_action :set_feedback_item, only: [:show, :edit, :update, :destroy]

  # GET /feedback_items
  # GET /feedback_items.json
  def index
    @feedback_items = FeedbackItem.all
  end

  # GET /feedback_items/1
  # GET /feedback_items/1.json
  def show
  end

  # GET /feedback_items/new
  def new
    @feedback_item = FeedbackItem.new
  end

  # GET /feedback_items/1/edit
  def edit
  end

  # POST /feedback_items
  # POST /feedback_items.json
  def create
    @feedback_item = FeedbackItem.new(feedback_item_params)

    respond_to do |format|
      if @feedback_item.save
        format.html { redirect_to @feedback_item, notice: 'Feedback item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @feedback_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @feedback_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedback_items/1
  # PATCH/PUT /feedback_items/1.json
  def update
    respond_to do |format|
      if @feedback_item.update(feedback_item_params)
        format.html { redirect_to @feedback_item, notice: 'Feedback item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @feedback_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedback_items/1
  # DELETE /feedback_items/1.json
  def destroy
    @feedback_item.destroy
    respond_to do |format|
      format.html { redirect_to feedback_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback_item
      @feedback_item = FeedbackItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_item_params
      params.require(:feedback_item).permit(:title, :description, :theme, :start)
    end
end

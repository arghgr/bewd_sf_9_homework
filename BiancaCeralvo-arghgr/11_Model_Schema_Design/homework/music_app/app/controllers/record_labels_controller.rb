class RecordLabelsController < ApplicationController
  def index
    @record_labels = RecordLabel.all
  end

  def show
    @record_label = set_record_label
  end

  def new
    @record_label = RecordLabel.new
  end

  def create
    @record_label = RecordLabel.new(record_label_params)
    if @record_label.save
      redirect_to record_labels_path, notice: "Record label successfully added."
    else
      render 'new', notice: "Record label creation not successful."
    end
  end

  def edit
    @record_label = set_record_label
  end

  def update
    @record_label = set_record_label
    if @record_label.update(record_label_params)
      redirect_to record_label_path(@record_label), notice: "Record label successfully updated."
    else
      render "edit", notice: "Record label update not successful."
    end
  end

  def destroy
    @record_label = set_record_label
    @record_label.destroy
    redirect_to record_labels_path
  end

  private

  def set_record_label
    RecordLabel.find(params[:id])
  end

  def record_label_params
    params.require(:record_label).permit(:name)
  end
end

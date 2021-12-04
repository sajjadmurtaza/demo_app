# frozen_string_literal: true

class TagsController < ApplicationController
  before_action :set_tag, only: %i[edit update]

  def index
    @tags = Tag.all
  end

  def edit; end

  def update
    respond_to do |format|
      if @tag.update(tag_params)
        if params['tagging_ids'].present?
          params['tagging_ids'].each do |id|
            @tag.taggings.create(book_id: id)
          end
        end
        format.html { redirect_to tags_path, notice: 'tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end

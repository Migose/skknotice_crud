class NotesController < ApplicationController
  # CREATE
  def new
    @token = form_authenticity_token 
  end

  def create
    note = Note.new
    note.title = params[:note_title]
    note.content = params[:note_content]
    note.save
    
    redirect_to "/notes/#{note.id}"
  end

  # READ
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find params[:id]
  end

  # UPDATE
  def edit
    @note = Note.find params[:id]
    @token = form_authenticity_token 
  end

  def update
    note = Note.find params[:note_id]
    note.title = params[:note_title]
    note.content = params[:note_content]
    note.save
    redirect_to "/notes/#{note.id}"
  end
  
  # DELETE
  def delete
    note = Note.find params[:id]
    note.destroy
    redirect_to '/notes'
  end
end

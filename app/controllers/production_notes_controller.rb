class ProductionNotesController < ApplicationController

  def show
    @notes = ProductionNote.all
  end

end

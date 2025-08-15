class HomeController < ApplicationController
  before_action :authenticate_persona!
  def index
    @persona = current_persona
    @ordens = @persona.ordens.order(fecha_orden: :desc)
  end
end

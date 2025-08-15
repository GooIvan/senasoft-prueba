class PerfilController < ApplicationController
  before_action :authenticate_persona!
  def show
    @persona = current_persona
  end
end


class Personas::SessionsController < Devise::SessionsController
  # GET /personas/sign_in
  def new
    self.resource = Persona.new
    clean_up_passwords(resource)
    yield resource if block_given?
    respond_with(resource, serialize_options(resource))
  end

  # POST /personas/sign_in
  def create
    fecha_param = params[:persona][:fecha_nacimiento]
    persona = Persona.where(
      tipo_identificacion_id: params[:persona][:tipo_identificacion_id],
      numero_identificacion: params[:persona][:numero_identificacion]
    ).find do |p|
      p.fecha_nacimiento.to_s == fecha_param || p.fecha_nacimiento.strftime('%Y-%m-%d') == fecha_param
    end
    if persona
      sign_in(:persona, persona)
      redirect_to root_path, notice: 'Inicio de sesión exitoso.'
    else
      self.resource = Persona.new
      flash.now[:alert] = 'Datos incorrectos. Intenta de nuevo.'
      render :new, status: :unprocessable_entity
    end
  end
end

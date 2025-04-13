class Mensaje
  # Los mensajes generalmente no cambian una vez creados,
  # así que usamos attr_reader para permitir solo leer sus atributos.
  attr_reader :id, :username, :timestamp, :texto

  # El constructor para inicializar un nuevo objeto Mensaje
  def initialize(id:, username:, timestamp:, texto:)
    @id = id
    @username = username
    @timestamp = timestamp
    @texto = texto
  end

  # Método para obtener la representación en String del mensaje.
  # Esto es lo que se mostrará en la consola.
  # Ruby llama a .to_s automáticamente en muchos contextos (como en puts).
  def to_s
    # Usamos la misma lógica de formato que tenías en tu función mostrar_mensajes
    "##{@id} #{@timestamp} - #{@username}: #{@texto}"
  end

  # Método para convertir el objeto Mensaje de vuelta a un Hash,
  # útil para guardarlo en JSON.
  def to_hash
    {
      "id" => @id,
      "username" => @username,
      "timestamp" => @timestamp,
      "texto" => @texto
    }
  end
end
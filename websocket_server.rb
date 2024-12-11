require 'eventmachine'
require 'em-websocket'

# Clase WebSocketServer para manejar las conexiones WebSocket
class WebSocketServer
  def initialize
    @clients = []
  end

  def run
    EM.run do
      # Crear el servidor WebSocket en el puerto 3030
      EM::WebSocket.start(host: '0.0.0.0', port: 3030) do |ws|
        ws.onopen { |handshake| 
          puts "Cliente conectado: #{handshake.inspect}"
          @clients << ws
        }

        ws.onmessage { |message|
          puts "Mensaje recibido: #{message}"

          # Enviar una respuesta al cliente
          ws.send("Servidor recibió tu mensaje: #{message}")

          # Difundir el mensaje a todos los clientes conectados
          @clients.each do |client|
            client.send("Mensaje de otro cliente: #{message}") unless client == ws
          end
        }

        ws.onclose {
          puts "Cliente desconectado"
          @clients.delete(ws)
        }
      end
    end
  end
end

# Iniciar el servidor WebSocket
server = WebSocketServer.new
server.run

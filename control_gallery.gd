extends Control

var _callback_ref = JavaScript.create_callback(self, "_my_callback")

# Este método se ejecuta al iniciar el proyecto
func _ready():
	print("Estoy en Godot y estoy listo")
	var window = JavaScript.get_interface("window")
	window.recibeCallback(_callback_ref)
	# JavaScript.get_interface("window").addEventListener('mesajito', _callback_ref)

func _on_miBoton1_pressed():
	print("me voy a javascript")
	var window = JavaScript.get_interface("window")
	window.muestraAlertaEnJS()

func _my_callback(args) -> void:
	print("me han llamado desde javascript y voy a pintar el mensaje recibido")
	var valor_recibido = args[0]
	print(valor_recibido)

extends Spatial

func _ready():
	# init our time of day
	$Sky_texture.set_time_of_day($Time_Of_Day.value, get_node("DirectionalLight"), deg2rad(15.0))

func _on_Sky_texture_sky_updated():
	$Sky_texture.copy_to_environment(get_viewport().get_camera().environment)

func _on_Time_Of_Day_value_changed(value):
	$Sky_texture.set_time_of_day(value, get_node("DirectionalLight"), 0.4)

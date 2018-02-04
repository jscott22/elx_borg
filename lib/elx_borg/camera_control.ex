defmodule ElxBorg.CameraControl do

  def init_camera() do
    Camera.set_size(425, 239)
  end

 def send_picture() do
   Camera.send_picture()
 end

end

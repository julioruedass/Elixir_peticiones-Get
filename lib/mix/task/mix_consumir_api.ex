defmodule Mix.Tasks.MixConsumirApi do

  use Mix.Task
  def run(_) do
    #IO.puts "Mensaje predio de task"
    Apicripto.start_get
  end
end

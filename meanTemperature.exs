defmodule Sensor do
  def process_temperatures(temps) do
    temps
    |> Enum.filter(fn temp -> temp > 25 end)
    |> mean()
  end

  defp mean([]), do: 0.0
  defp mean(temps) do
    sum = Enum.sum(temps)
    count = length(temps)
    sum / count
  end
end

# Test the function
temperatures = [20, 26, 28, 22]
IO.puts(Sensor.process_temperatures(temperatures)) # Saída: 27.0

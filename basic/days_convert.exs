days = IO.gets("") |> String.trim() |> String.to_integer()

years = div(days, 365)
rest = rem(days, 365)
months = div(rest, 30)
remaining_days = rem(rest, 30)

IO.puts("#{years} ano(s)")
IO.puts("#{months} mes(es)")
IO.puts("#{remaining_days} dia(s)")

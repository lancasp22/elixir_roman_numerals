defmodule RomanNumerals do
  @conversions [{50, "L"}, {40, "XL"}, {10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}]

  def convert(number) do
    convert(number, @conversions, "")
  end

  # defp convert(0, _) do
  #   ""
  # end
  defp convert(0, _conversion_table, output_roman), do: output_roman
  defp convert(number, [{arabic, roman} | rest] = conversion_table, output_roman) do
    if number >= arabic do 
      convert(number - arabic, conversion_table, output_roman <> roman)
    else
      convert(number, rest, output_roman)
    end
  end

  # defp convert(number, [_first | rest]) do
  #   convert(number, rest)
  # end

  # defp convert(number, _) when number >= 9 do
  #   "IX" <> convert(number - 9)
  # end
  
  # defp convert(number, _) when number >= 5 do
  #   "V" <> convert(number - 5)
  # end

  # defp convert(number, _) when number >= 4 do
  #   "IV" <> convert(number - 4)
  # end

  # defp convert(number, _) do 
  #   "I" <> convert(number - 1)
  # end

end

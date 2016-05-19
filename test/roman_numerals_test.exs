defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "convert arabic numbers to roman" do 
    test_cases = [{0, ""}, {1, "I"}, {2, "II"}, {4, "IV"}, {5, "V"}, {6, "VI"}, {9, "IX"}, {10, "X"}, {14, "XIV"}, {20, "XX"}, {40, "XL"}, {50, "L"}]
    Enum.each test_cases, fn ({arabic, roman}) -> assert RomanNumerals.convert(arabic) == roman end;
  end
end

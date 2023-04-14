defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "run" do
    test "when the numbers is valid, returns :numbers" do
      numbers = "1,2,3,4,5,6,7,8,9,15"

      assert Fizzbuzz.run(numbers) == [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :fizzbuzz]
    end

    test "when the numbers is valid, returns :success" do
      numbers = "58,89,22,11,33,41,13,0,12,5,19,21,1,0"

      assert Fizzbuzz.run(numbers) == [
               58,
               89,
               22,
               11,
               :fizz,
               41,
               13,
               :fizzbuzz,
               :fizz,
               :buzz,
               19,
               :fizz,
               1,
               :fizzbuzz
             ]
    end
  end
end

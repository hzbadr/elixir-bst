defmodule BstTest do
  use ExUnit.Case
  doctest Bst

  test "the truth" do
    array = [1,2,3,4,5,6,7,8,9,10]
    assert Bst.balance(array) == %{val: 6, left: %{val: 3, left: %{val: 1, right: %{val: 2}}, right: %{val: 4, right: {val: 5}}}, right: %{val: 9, left: %{val: 7, right: %{val: 8}}, right: {val: 10}}}
  end
end

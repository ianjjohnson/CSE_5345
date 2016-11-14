defmodule CanvasTest do
  use ExUnit.Case
  doctest Canvas

  test "95 is an A" do
    assert Canvas.grade(95) == "A"
  end

  test "45 is an F" do
    assert Canvas.grade(45) == "F"
  end

  test "100 is an A" do
    assert Canvas.grade(100) == "A"
  end

  test "50 is an D" do
    assert Canvas.grade(50) == "D"
  end

  test "0 is an F" do
    assert Canvas.grade(0) == "F"
  end

  test "-1 is an error" do
    assert Canvas.grade(-1) == :error
  end

  test "101 is an error" do
    assert Canvas.grade(101) == :error
  end

end


#Happy: 95 -> A
#Happy: 45 -> F

#Edge: 100 -> A
#Edge: 50 -> D
#Edge: 0 -> F

#Error: -1 -> error
#Error: 101 -> error

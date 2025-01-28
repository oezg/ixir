defmodule AirportItineraryTest do
  use ExUnit.Case
  doctest AirportItinerary

  test "Simple" do
    assert AirportItinerary.itinerary([%Flight{in: "TRN", out: "FCO"}]) == "TRN-FCO"
  end

  test "Multiple" do
    assert AirportItinerary.itinerary([
             %Flight{in: "TRN", out: "FCO"},
             %Flight{in: "CIA", out: "JFK"}
           ]) ==
             "TRN-FCO-CIA-JFK"
  end

  test "Some airports are skipped" do
    assert AirportItinerary.itinerary([
             %Flight{in: "TRN", out: "FCO"},
             %Flight{in: "FCO", out: "JFK"}
           ]) ==
             "TRN-FCO-JFK"
  end
end

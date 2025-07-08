defmodule DuplicatesTest do
  use ExUnit.Case
  doctest Duplicates

  test "Sample tests" do
    Enum.each(
      [
        {["ccooddddddewwwaaaaarrrrsssss", "piccaninny", "hubbubbubboo"],
         ["codewars", "picaniny", "hubububo"]},
        {["abracadabra", "allottee", "assessee"], ["abracadabra", "alote", "asese"]},
        {["kelless", "keenness"], ["keles", "kenes"]},
        {["Woolloomooloo", "flooddoorroommoonlighters", "chuchchi"],
         ["Wolomolo", "flodoromonlighters", "chuchchi"]},
        {["adanac", "soonness", "toolless", "ppellee"], ["adanac", "sones", "toles", "pele"]},
        {["callalloo", "feelless", "heelless"], ["calalo", "feles", "heles"]},
        {["putteellinen", "keenness"], ["putelinen", "kenes"]},
        {["kelless", "voorraaddoosspullen", "achcha"], ["keles", "voradospulen", "achcha"]}
      ],
      fn {a, b} -> assert Duplicates.dup(a) == b end
    )
  end
end

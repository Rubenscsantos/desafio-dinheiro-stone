defmodule DesafioStoneTest do
  use ExUnit.Case
  import Mock

  doctest DesafioStone.ClientDataReader
  alias DesafioStone.ClientDataReader, as: ClientDataReader

  @test_file "test/fixtures/client_test_list.txt"

  @tag watching: false
  test "finds and reads file in a directory" do
    first_listed_client = List.first(ClientDataReader.read_file(@test_file))
    assert first_listed_client == ["Rubens Santos", "200.00"]
  end

  @tag watching: false
  test "identifies clients correctly" do
    with_mock File, [read!: fn(_) -> "client, Maria, 5000.99" end] do
      client_data = ClientDataReader.read_file("file_doesn't_exist.txt")
      assert client_data == [["Maria", "5000.99"]]
    end
  end

  @tag watching: false
  test "reading a non-client line, should return an empty list" do
    with_mock File, [read!: fn(_) -> "not_a_client, Renata, 0.00" end] do
      non_client_data = ClientDataReader.read_file("non_clients_file.txt")
      assert non_client_data == []
    end
  end
end

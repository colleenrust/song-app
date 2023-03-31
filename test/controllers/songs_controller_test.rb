require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end 
  test "show" do
    get "/song/#{Song.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id","title", "artist","album","year","created_at","updated_at"],data.keys
  end
  test "update" do
    song = Song.first
    patch "/songs/#{song.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
  test "destroy" do
    assert_difference "Song.count", -1 do
      delete "/songs/#{Song.first.id}.json"
      assert_response 200
    end
  end
end

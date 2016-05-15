require "test_helper"

class BucketlistRoutesTest < ActionDispatch::IntegrationTest
  test "the routes" do
    assert_generates "/api/v1/bucketlists",
                     controller: "api/v1/bucketlists", action: "index"
    assert_generates "/api/v1/bucketlists/1",
                     controller: "api/v1/bucketlists", action: "show", id: 1
  end

  test "should route to create a bucketlist" do
    assert_routing({ method: "post", path: "/api/v1/bucketlists" },
                   controller: "api/v1/bucketlists", action: "create")
  end

  test "should route to update a bucketlist" do
    assert_routing({ method: "put", path: "/api/v1/bucketlists/2" },
                   controller: "api/v1/bucketlists", action: "update", id: "2")
  end

  test "should route to delete a bucketlist" do
    assert_routing({ method: "delete", path: "/api/v1/bucketlists/3" },
                   controller: "api/v1/bucketlists", action: "destroy", id: "3")
  end
end
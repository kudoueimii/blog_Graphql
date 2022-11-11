require "test_helper"

class QlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ql = qls(:one)
  end

  test "should get index" do
    get qls_url
    assert_response :success
  end

  test "should get new" do
    get new_ql_url
    assert_response :success
  end

  test "should create ql" do
    assert_difference('Ql.count') do
      post qls_url, params: { ql: { content: @ql.content, title: @ql.title } }
    end

    assert_redirected_to ql_url(Ql.last)
  end

  test "should show ql" do
    get ql_url(@ql)
    assert_response :success
  end

  test "should get edit" do
    get edit_ql_url(@ql)
    assert_response :success
  end

  test "should update ql" do
    patch ql_url(@ql), params: { ql: { content: @ql.content, title: @ql.title } }
    assert_redirected_to ql_url(@ql)
  end

  test "should destroy ql" do
    assert_difference('Ql.count', -1) do
      delete ql_url(@ql)
    end

    assert_redirected_to qls_url
  end
end

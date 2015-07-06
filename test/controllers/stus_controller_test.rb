require 'test_helper'

class StusControllerTest < ActionController::TestCase
  setup do
    @stu = stus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stu" do
    assert_difference('Stu.count') do
      post :create, stu: { address: @stu.address, domicile: @stu.domicile, f_name: @stu.f_name, mob: @stu.mob, program_id: @stu.program_id, reg_no: @stu.reg_no, session_id: @stu.session_id, student_name: @stu.student_name, user_id: @stu.user_id }
    end

    assert_redirected_to stu_path(assigns(:stu))
  end

  test "should show stu" do
    get :show, id: @stu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stu
    assert_response :success
  end

  test "should update stu" do
    patch :update, id: @stu, stu: { address: @stu.address, domicile: @stu.domicile, f_name: @stu.f_name, mob: @stu.mob, program_id: @stu.program_id, reg_no: @stu.reg_no, session_id: @stu.session_id, student_name: @stu.student_name, user_id: @stu.user_id }
    assert_redirected_to stu_path(assigns(:stu))
  end

  test "should destroy stu" do
    assert_difference('Stu.count', -1) do
      delete :destroy, id: @stu
    end

    assert_redirected_to stus_path
  end
end

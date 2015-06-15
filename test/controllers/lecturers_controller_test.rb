require 'test_helper'

class LecturersControllerTest < ActionController::TestCase
  setup do
    @lecturer = lecturers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecturers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecturer" do
    assert_difference('Lecturer.count') do
      post :create, lecturer: { address: @lecturer.address, cnic: @lecturer.cnic, date_of_join: @lecturer.date_of_join, description: @lecturer.description, desig: @lecturer.desig, name: @lecturer.name, qualification: @lecturer.qualification, type: @lecturer.type }
    end

    assert_redirected_to lecturer_path(assigns(:lecturer))
  end

  test "should show lecturer" do
    get :show, id: @lecturer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecturer
    assert_response :success
  end

  test "should update lecturer" do
    patch :update, id: @lecturer, lecturer: { address: @lecturer.address, cnic: @lecturer.cnic, date_of_join: @lecturer.date_of_join, description: @lecturer.description, desig: @lecturer.desig, name: @lecturer.name, qualification: @lecturer.qualification, type: @lecturer.type }
    assert_redirected_to lecturer_path(assigns(:lecturer))
  end

  test "should destroy lecturer" do
    assert_difference('Lecturer.count', -1) do
      delete :destroy, id: @lecturer
    end

    assert_redirected_to lecturers_path
  end
end

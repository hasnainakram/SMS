require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { Father_name: @student.Father_name, address: @student.address, cnic: @student.cnic, d_of_birth: @student.d_of_birth, gender: @student.gender, mob: @student.mob, name: @student.name, program_id: @student.program_id, reg_no: @student.reg_no, session: @student.session }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { Father_name: @student.Father_name, address: @student.address, cnic: @student.cnic, d_of_birth: @student.d_of_birth, gender: @student.gender, mob: @student.mob, name: @student.name, program_id: @student.program_id, reg_no: @student.reg_no, session: @student.session }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end

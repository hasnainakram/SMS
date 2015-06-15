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
      post :create, student: { B_date: @student.B_date, F_name: @student.F_name, L_name: @student.L_name, Regstration_no: @student.Regstration_no, address: @student.address, city: @student.city, department: @student.department, email: @student.email, gender: @student.gender, mob: @student.mob, program: @student.program, state: @student.state }
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
    patch :update, id: @student, student: { B_date: @student.B_date, F_name: @student.F_name, L_name: @student.L_name, Regstration_no: @student.Regstration_no, address: @student.address, city: @student.city, department: @student.department, email: @student.email, gender: @student.gender, mob: @student.mob, program: @student.program, state: @student.state }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end

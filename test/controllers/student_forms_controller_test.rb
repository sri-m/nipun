require 'test_helper'

class StudentFormsControllerTest < ActionController::TestCase
  setup do
    @student_form = student_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_form" do
    assert_difference('StudentForm.count') do
      post :create, student_form: { cell: @student_form.cell, email: @student_form.email, gender: @student_form.gender, group: @student_form.group, name: @student_form.name, options: @student_form.options, subject: @student_form.subject }
    end

    assert_redirected_to student_form_path(assigns(:student_form))
  end

  test "should show student_form" do
    get :show, id: @student_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_form
    assert_response :success
  end

  test "should update student_form" do
    patch :update, id: @student_form, student_form: { cell: @student_form.cell, email: @student_form.email, gender: @student_form.gender, group: @student_form.group, name: @student_form.name, options: @student_form.options, subject: @student_form.subject }
    assert_redirected_to student_form_path(assigns(:student_form))
  end

  test "should destroy student_form" do
    assert_difference('StudentForm.count', -1) do
      delete :destroy, id: @student_form
    end

    assert_redirected_to student_forms_path
  end
end

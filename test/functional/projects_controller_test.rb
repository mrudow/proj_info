require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { client: @project.client, contact_info: @project.contact_info, date_of_last_contact: @project.date_of_last_contact, description: @project.description, notes: @project.notes, price: @project.price, responsible_user: @project.responsible_user, status: @project.status, work_type: @project.work_type }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, id: @project, project: { client: @project.client, contact_info: @project.contact_info, date_of_last_contact: @project.date_of_last_contact, description: @project.description, notes: @project.notes, price: @project.price, responsible_user: @project.responsible_user, status: @project.status, work_type: @project.work_type }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end

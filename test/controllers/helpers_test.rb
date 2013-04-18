require 'test_helper'

class HelpersTest < ActionController::TestCase
  tests ApplicationController

  test "controllers should respond to 'present'" do
    assert_respond_to @controller, :present
  end

  test "should load the project presenter for Project" do
    project = Project.create!(name: 'test')
    presenter = @controller.present(project)
    assert_instance_of ProjectPresenter, presenter
  end

  test "should load the project presenter for IndexDocument::Project" do
    index_document_project = IndexDocument::Project.new
    presenter = @controller.present(index_document_project)
    assert_instance_of ProjectPresenter, presenter
  end

end

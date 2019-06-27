require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Department", with: @employee.department
    fill_in "Designation", with: @employee.designation
    fill_in "Dob", with: @employee.dob
    fill_in "Doj", with: @employee.doj
    fill_in "Email", with: @employee.email
    fill_in "Firstname", with: @employee.firstname
    fill_in "Id", with: @employee.id
    fill_in "Lastname", with: @employee.lastname
    fill_in "Permanent address", with: @employee.permanent_address
    fill_in "Phone", with: @employee.phone
    fill_in "Residential address", with: @employee.residential_address
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Department", with: @employee.department
    fill_in "Designation", with: @employee.designation
    fill_in "Dob", with: @employee.dob
    fill_in "Doj", with: @employee.doj
    fill_in "Email", with: @employee.email
    fill_in "Firstname", with: @employee.firstname
    fill_in "Id", with: @employee.id
    fill_in "Lastname", with: @employee.lastname
    fill_in "Permanent address", with: @employee.permanent_address
    fill_in "Phone", with: @employee.phone
    fill_in "Residential address", with: @employee.residential_address
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end

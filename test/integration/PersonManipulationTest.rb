require 'test_helper'

class PersonManipulationTest < ActionDispatch::IntegrationTest
  test 'check all' do
    get '/groups'
    assert_response :success
    assert_template 'groups/index'
    assert assigns(:groups).count == 4

    get '/groups/new'
    assert_response :success
    assert_template 'groups/new'

    post_via_redirect '/groups', group: {name: 'John', person_id: 3}
    group = assigns(:group)
    assert group
    assert_response :success
    assert_template 'groups/show'

    get '/groups'
    assert assigns(:groups).count == 5

    get '/people'
    assert_response :success
    assert_template 'people/index'
    assert assigns(:people).count == 6

    get '/people/new'
    assert_response :success
    assert_template 'people/new'

    post_via_redirect '/people', person: {first_name:'John', second_name: 'Smith', birth_date:'19-09-1991'}
    assert_response :success
    assert_template 'people/new'

    post_via_redirect '/people', person: {first_name:'John', second_name: 'Smith', birth_date:'19-09-1991', group_id:group.id}
    person = assigns(:person)
    assert person
    assert_response :success
    assert_template 'people/show'

    get '/people'
    assert assigns(:people).count == 7
  end
end
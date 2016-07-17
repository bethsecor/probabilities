require File.expand_path '../../test_helper.rb', __FILE__

class AppTest < Minitest::Test

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_two_by_two_form_page
    get '/'
    assert last_response.ok?
    form = "<form method='get' action='/results'>
  <input type='text' name='a'>
  <input type='text' name='b'>
  <br>
  <input type='text' name='d'>
  <input type='text' name='c'>
  <br>
  <input type='submit'>
</form>\n"
    assert_equal form, last_response.body
  end

  def test_results
    get '/results', params: {a: 1, b: 6, c: 3, d: 2}
    assert last_response.ok?
    assert_equal "OR: 0.25\n", last_response.body
  end
end

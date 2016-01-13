class Fastly::GetService < Fastly::Request
  request_method :get
  request_path { |r| "/service/#{r.service_id}" }

  parameter :service_id

  def mock
    mock_response(find!(:services, service_id))
  end
end

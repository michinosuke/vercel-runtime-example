Handler = Proc.new do |request, response|
  name = request.query['name'] || 'World'
 
  response.status = 200
  response['Content-Type'] = 'text/text; charset=utf-8'
  response.body = "Hello #{name}"
end
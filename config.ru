class SampleApp
  def call(env)
    env.each do |key, value|
      puts "env[#{key}]=#{value}"
    end
    [
      200,
      {'Content-Type' => 'text/plain'},
      ['hi']
    ]
  end
end

run SampleApp.new

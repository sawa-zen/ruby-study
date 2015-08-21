puts 'Hello, world!'

puts '#### 変数 ####'
sample_val = 1
puts sample_val
sample_val = 'sample'
puts sample_val

puts '#### 定数 ####'
SAMPLE_VAL = 1
puts SAMPLE_VAL
SAMPLE_VAL = 'sample'
puts SAMPLE_VAL

puts '#### 文字列置換 ####'
sample_val = 'ruby'
puts "Hello, #{sample_val}"
puts 'Hello, #{sample_val}'

puts '#### シンボル ####'
symbol_val = :sample
puts symbol_val

puts '#### nil ####'
puts nil.nil?
puts 'sample'.nil?

puts '#### 真偽 ####'
if true
  puts 'true'
end
if false
  puts 'false'
end
if nil
  puts 'nil'
end

puts '#### ハッシュ ####'
hash = {'key' => 'value'}
puts hash['key']
hash = {:key => 'value'}
puts hash[:key]
hash = {key: 'value'}
puts hash[:key]
hash = {key1: 'value', key2: 100}
hash.each do |key, value|
  puts "key=#{key}, value=#{value}"
end

puts '#### 配列 ####'
array = ['perl', 'ruby', 'php']
puts "array[0]=#{array[0]}"
array.each do |value|
  puts value
end

puts '#### クラス ####'
class SampleClass
end
class ChildClass < SampleClass
end

puts '#### モジュール ####'
module SampleModule
end

puts '#### メソッド ####'
class Sample
  puts self

  def sample_method(num)
    num * 2
  end

  def web_engineer?
    true
  end

  def show_self
    self
  end

  def get_instance_val
    @instance_val
  end

  def set_instance_val!
    @instance_val = 'set_val'
  end

  # クラスメソッド
  def Sample.class_method1
    puts 'class_method1'
  end

  def self.class_method2
    puts 'class_method2'
  end

  class << self
    def class_method3
      puts 'class_method3'
    end
  end

end

sample = Sample.new
puts sample.sample_method(10)
puts sample.show_self
Sample.class_method1
Sample.class_method2
Sample.class_method3
p sample.get_instance_val
sample.set_instance_val!
p sample.get_instance_val


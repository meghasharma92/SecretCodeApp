class Code < ApplicationRecord
  belongs_to :user, optional: true

  #Using gem
=begin
  def self.generate_code(code_times)
  	codes, message = [],''
	code_times.to_i.times do |i|
  	codes << Code.new(code: SecureRandom.hex(10))
	end
	Code.import codes
	message = "#{code_times} secret codes have created successfully"
  end
=end

  #Without gem
  def self.generate_code(code_times)
  	time, message = Time.now.to_s, ''
  	values = code_times.to_i.times.map { code = SecureRandom.hex(10); "('#{code}','#{time}','#{time}')" }.join(",")
  	begin
  	 ActiveRecord::Base.connection.execute("INSERT INTO codes (code,created_at,updated_at) VALUES #{values}")
  	rescue Exception => e
  		p e.message
  		message = "Something went wrong. Please check the logs."
  	else
  		message = "#{code_times} secret codes have created successfully"
  	end	
  end

end


	
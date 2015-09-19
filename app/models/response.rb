class Response < ActiveRecord::Base
  belongs_to :question

  #Generates a value in range 0..1 to determine correctness of response
  def self.determine_positivity(answer, response)

  	#Upcase to take care of all capitalization issues
  	response = response.upcase

  	answer = answer.split(', ')

  	#Score Keeping
  	score = 0
  	score_incremental = 1.0/answer.length
  	
  	#Determining how many of keywords are in response
  	answer.each do |correct_word|
  		correct_word = correct_word.upcase
  		if response.include?(correct_word)
  			score += score_incremental
  		end
  	end

  	return score
  end

end

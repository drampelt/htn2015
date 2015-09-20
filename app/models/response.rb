class Response < ActiveRecord::Base
  belongs_to :question
  
  before_save do
    determine_correctness
    determine_positivity
    determine_tags
    determine_keywords
  end

  #Generates a value in range 0..1 to determine correctness of response
  def determine_correctness
    answer = self.question.answer
  	#Upcase to take care of all capitalization issues
  	response = self.content.upcase

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
  	self.correctness = score
  end
  
  def determine_positivity
    self.positivity = Indico.sentiment self.content
  end
  
  def determine_tags
    self.tags = Indico.text_tags(self.content, "top_n" => 5, "threshold" => 0.1).sort_by {|_key, val| val}.reverse.map(&:first).join(', ')
  end
  
  def determine_keywords
    self.keywords = Indico.keywords(self.content, "top_n" => 5, "threshold" => 0.1).sort_by {|_key, val| val}.reverse.map(&:first).join(', ')
  end

end

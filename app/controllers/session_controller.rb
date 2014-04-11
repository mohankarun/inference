class SessionController < ApplicationController

def start
@feedback_items = FeedbackItem.all
end


def end
@feedback_items = FeedbackItem.all
@scores=Hash.new
params.each do |key, value| 

if (key.to_s[/feed.*/])
     key =key.sub("feed","")
	@feedback_item = FeedbackItem.find(key)
	
	@scores[key]=value

end
@scores.symbolize_keys	
logger.debug "Loadign to score key:  #{@scores}"

end
end

end

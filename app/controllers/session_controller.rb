class SessionController < ApplicationController

def start
@feedback_items = FeedbackItem.all
end


def end
@feedback_items = FeedbackItem.all
@scores=Hash.new
@combined=Hash.new
params.each do |key, value| 

if (key.to_s[/feed.*/])
     key =key.sub("feed","")
	@feedback_item = FeedbackItem.find(key)
	
	@scores[key]=value

end
if (key.to_s[/combined.*/])
     key =key.sub("combined","")
	@feedback_item = FeedbackItem.find(key)
	
	@combined[key]=value

end



@scores.symbolize_keys	
@combined.symbolize_keys	


end
end

end

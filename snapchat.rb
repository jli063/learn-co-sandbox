class Snapchat
  attr_accessor(:username,:password,:snap_story,:snaps_received,:snaps_sent)
  def initialize(username,password,snap_story,snaps_received,snaps_sent)
    @username=username
    @password=password
    @snap_story=0
    @snaps_received=10
    @snaps_sent=0
  end
  def story?
    puts "Would you like to add to your story?"
    answer=gets.chomp.upcase
    if answer=="YES"
      puts "what's your story about"
      story=gets.chomp
      @snap_story+=1
    elsif answer=="NO"
      puts "You have #{snap_story}snaps in your story"
    end
  end

  # def gets_story
  #   story
  # end
  
  def story_count
    @snap_story
  end
  
  def open_snap?
    random_snaps=["dog","friends","food","bok choy","joke"]
    puts "Would you like to open snaps?"
    answer=gets.chomp.upcase
    if answer=="YES"
      puts random_snaps.sample
     @snaps_received=@snaps_received - 1
    elsif answer== "NO"
     puts "You still have #{snaps_received}"
   end
 end
 
 def send?
   puts "Would you like to send a snapchat?"
   answer=gets.chomp.upcase
   if answer=="YES"
     puts "What are you sending?"
     content=gets.chomp
     puts "#{content} has been sent"
     @snaps_sent+=1
   elsif answer=="NO"
    puts "You have sent #{snaps_sent}"
  end
end

end

jessica= Snapchat.new("Jessicaemily002", "1234",snap_story,snaps_received, snaps_sent)
alice = Snapchat.new("Abretz", "password",snap_story,snaps_received, snaps_sent)





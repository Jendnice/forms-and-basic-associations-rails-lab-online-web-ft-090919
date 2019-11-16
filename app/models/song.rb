# class Song < ActiveRecord::Base
  
#   belongs_to :artist 
#   belongs_to :genre 
#   has_many :notes

#   accepts_nested_attributes_for :notes, :reject_if => proc { |attributes| attributes[:content].blank? }

#   def artist_name=(name)
#     self.artist = artist.find_or_create_by(name: name)
#   end

#   def artist_name
#      self.try(:name)
#   end

#   def genre_name=(name)
#     self.genre = genre.find_or_create_by(name: name)
#   end

#   def genre_name
#      self.genre ? self.genre.name : nil
#   end

#   # def note_ids=(ids)
#   #   ids.each do |id|
#   #     note = note.find(id)
#   #     self.notes << note
#   #   end
#   # end

  
# end


class Song < ActiveRecord::Base
  
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  accepts_nested_attributes_for :notes, :reject_if => proc { |attributes| attributes[:content].blank? }



  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    artist.try(:name)
  end

end

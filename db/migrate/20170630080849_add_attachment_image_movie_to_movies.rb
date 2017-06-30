class AddAttachmentImageMovieToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :image_movie
    end
  end

  def self.down
    remove_attachment :movies, :image_movie
  end
end

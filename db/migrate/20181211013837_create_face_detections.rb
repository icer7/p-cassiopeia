class CreateFaceDetections < ActiveRecord::Migration[5.2]
  def change
    create_table :face_detections do |t|

      t.timestamps
    end
  end
end

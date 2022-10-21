class Schedule < ApplicationRecord
     validates :title, presence: true
     validates :start,  presence: true
     validates :end, presence: true
     validate :start_end_check
     validate :startday
     
     def start_end_check
        return if self.start.blank?
        return if self.end.blank?
        errors.add(:end, "は開始日より前は登録できません。") unless self.start < self.end 
     end
     
     def startday
       return if self.start.blank?
       errors.add(:start, "は今日以降の日付を選択してください") if start < Date.today
     end
end

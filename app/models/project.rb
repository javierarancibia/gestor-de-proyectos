class Project < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true, length: { maximum: 160 }
    validates :start_date, presence: true
    validates :due_date, presence: true
    

    enum status: [:Propuesta, :Progreso, :Terminado]
    
end






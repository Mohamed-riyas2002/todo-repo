class Todo < ApplicationRecord
    def to_pleasant_string
        if status == true
            is_completed = "[X]"
        else
            is_completed = "[ ]"
        end
        "#{id}: #{task} #{is_completed}"
    end
end
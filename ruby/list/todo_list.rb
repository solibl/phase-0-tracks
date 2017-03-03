class TodoList
    def initialize(array)
        @Todolist = array
    end

    def get_items
        @Todolist
    end

    def add_item(new_item)
        @Todolist<<new_item
    end

    def delete_item(existing_item)
        @Todolist.delete(existing_item)
    end

    def get_item(index)
        @Todolist[index]
    end
end
module Launch
  class QueueIsEmpty < StandardError; end

  class Queue
    def initialize
      @list = Array.new
    end
    def enter(e)
      @list << e
    end

    def leave
      if !@list.empty?
        @list.shift
      else
        raise QueueIsEmpty
      end
    end

    def empty?
      if @list == []
        return true
      else
        return false
      end
    end

    def peek
      return @list.first
    end

  end
end

class QuestionReplyType
  def self.to_sym(query)
    case query.value(QV.reply_type)
    when QV.Location
      :location
    when QV.Temperature
      :temperature
    when QV.Select
      :select
    else
      nil
    end
  end
end

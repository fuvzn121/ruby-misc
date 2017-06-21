require "date"

class Person
  attr_reader :birth_date
  
  # Person.newでキーワード引数で生年月日を受け取る
  def initialize(birth_date:)
    @birth_date = birth_date
  end

  # ある日付の年齢を返す。日付指定されない場合は今日の年齢になる。
  def age(date = Date.today)
    # 生まれる前なら-1を返す（エラーケース）
    return -1 if date < birth_date

    # 年数を計算する
    years = date.year - birth_date.year
    
    if date.month < birth_date.month
      # 誕生月の前なら1引く
      years -= 1
    elsif date.month == birth_date.month && date.day < birth_date.day
      # 誕生月と同月で誕生日の前なら1引く
      years -= 1
    end
    return years
  end
end

ruby = Person.new(birth_date: Date.new(1993, 2, 24))
p ruby.birth_date
p ruby.age
p ruby.age(Date.new(2013, 2, 23))
p ruby.age(Date.new(2013, 2, 24))
p ruby.age(Date.new(1988, 2, 24))

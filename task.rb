# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載

  names << "斎藤"
  p names

end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載

  # array = array1 += array2 → array1 += array2 と同義でarrayに代入する必要なし

  array = array1 + array2
  p array

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載

  p numbers.count(3)

end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載

  # sports.delete(nil)
  # ↓nilを削除するメソッド

  sports.compact!

  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載

  p array1.empty?
  p array2.empty?

end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載

  # numbers2 = []

  # numbers1.each do |num|
  #   numbers2 << num * 10
  # end
  # ↓mapメソッドを使って簡潔に
  
  numbers2 = numbers1.map{|num| num * 10}

  p numbers2

end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載

  # array.map!{|s| s.to_i}
  # ↓(&:)を使って更に簡潔に

  array.map!(&:to_i)

  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載

  # upper_case_programming_languages = []

  # programming_languages.each do |lang|
  #   lang.capitalize!
  #   upper_case_programming_languages << lang.upcase
  # end
  # ↓map(&:)を使って簡潔に

  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)

  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載

  names.each.with_index(1) do |name,i|
    puts "会員No.#{i} #{name}さん"
  end

end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載

  # if foods.include?("うに")
  #   puts "好物です"
  # else
  #   puts "まぁまぁ好きです"
  # end
  # ↓配列の要素１つ１つに対して回答を出力

  foods.each do |food|
    if food.include?("うに") 
      puts "#{food}:好物です"
    else
      puts "#{food}:まぁまぁ好きです"
    end
  end

end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載

  sports.flatten!.uniq!

  sports.each.with_index(1) do |sport,i|
    puts "No#{i} #{sport}"
  end

end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載

  puts data[:user][:name]
  # puts data.dig(:user, :name) ←こっちでも出力可

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載

  user_data.merge!(update_data)
  p user_data

end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載

  p data.keys

end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載

  # if data1.has_key?(:age)
  #   puts "OK"
  # else
  #   puts "NG"
  # end

  # if data2.has_key?(:age)
  #   puts "ok"
  # else
  #   puts "NG"
  # end

  # ↓三項演算子を使って簡潔に

  puts data1.has_key?(:age) ? "OK" : "NG"

  puts data2.has_key?(:age) ? "OK" : "NG"

end


def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載

  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end

end

class UserQ17
  # 以下に回答を記載

  # attr_accessor :name, :age, :gender
  # クラス外部からインスタンス変数にアクセスするときに必要
  # 今回はinfoメソッドを定義しているので不要

  def initialize(name:, age:, gender:)
    @name = name
    @age = age
    @gender = gender
  end

  def info
    puts <<~TEXT
      名前:#{@name}
      年齢:#{@age}
      性別:#{@gender}
    TEXT
    # ヒアドキュメントを使用
  end

end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  # attr_accessor :name, :age
  # クラス外部からインスタンス変数にアクセスするときに必要
  # 今回はintroduceメソッドを定義しているので不要

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def introduce
    if @age > 10
      "こんにちは、#{@name}と申します。よろしくお願いいたします。"
    else
      "はいさいまいど〜、#{@name}です!!!"
    end
    # ↓puts user1.introduceなので"〜〜"のみでok
  end

end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  # attr_accessor :name
  # クラス外で.nameを使うため定義
  attr_reader :name
  # 読み出しのみ利用なのでこちらで

  def initialize(name:)
    @name = name
  end

end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載

  # attr_accessor :name, :age
  attr_reader :name, :age
  # 読み出しのみ利用なのでこちらで

  def initialize(name:, age:)
    @name = name
    @age = age
  end

end

class Zoo
  # 以下に回答を記載
  
  def initialize(name:, entry_fee:)
    # @zoo_name不要ですが、機能拡張も視野に入れて一応インスタンスしておきました
    @zoo_name = name
    # @infant = entry_fee[:infant]
    # @children = entry_fee[:children]
    # @adult = entry_fee[:adult]
    # @senior = entry_fee[:senior]
    @entry_fee = entry_fee
    # 出力部分でそれぞれに分ける
  end

  def info_entry_fee(users)
    # caseの返り値を任意変数に格納
    fee = case users.age
    
    # 場合分の中でputsは記述せずに、返り値を出力しておく
    when 0..5
      # puts "#{users.name}さんの入場料金は#{@entry_fee[:infant]}円です"
      @entry_fee[:infant]
    when 6..12
      # puts "#{users.name}さんの入場料金は#{@entry_fee[:children]}円です"
      @entry_fee[:children]
    when 13..64
      # puts "#{users.name}さんの入場料金は#{@entry_fee[:adult]}円です"
      @entry_fee[:adult]
    when 65..120
      # puts "#{users.name}さんの入場料金は#{@entry_fee[:senior]}円です"
      @entry_fee[:senior]
    end

    # 最後にnameと返り値を使ってputsで出力
    puts "#{users.name}さんの入場料金は#{fee}円です"

  end

end

# メモ書き
#p @entry_fee {:infant=>0, :children=>400, :adult=>800, :senior=>500}
#p @users <UserQ20:0x00007f9a30902f78 @name="たま", @age=3>


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]
  
  users.each do |user|
    zoo.info_entry_fee(user)
  end
end
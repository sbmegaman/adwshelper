# encoding: utf-8
require 'csv'

class Array
  def to_tsv(filename)
    CSV.open(filename, "wb", col_sep: "\t") do |csv|
      self.each do |x|
        csv << (x.kind_of?(Enumerable) ? x.map(&:to_s) : [x])
      end
    end
  end
end

# 引数からファイル読み込み
raise "読み込むファイルを指定してください。 例）ruby gen.rb <filename>" if ARGV.length == 0
path = ARGV.shift
input_file = File.join(File.dirname(path), path)

keys = [:campain_name, :words_a, :words_b, :title, :sentence1, :sentence2, :disp_url, :jump_url]
inputs = {}
keys.each do |key|
    inputs[key] = []
end
switch = 0


File.open(input_file, 'r:utf-8') do |file|
    file.each_line do |line|
        if line == "\n" then
            switch += 1
            next
        end
        inputs[keys[switch]].push(line.chomp)
    end
end

# わかりやすいように切り出し大根
campain_name = inputs[:campain_name][0]
title        = inputs[:title][0]
sentence1    = inputs[:sentence1][0]
sentence2    = inputs[:sentence2][0]
disp_url     = inputs[:disp_url][0]
jump_url     = inputs[:jump_url][0]
# キーワード同士の組み合わせ
sets = inputs[:words_a].product(inputs[:words_b]).collect { |set| set.join("　") }



# ファイルA出力
output_collection = [["Campaign", "Ad Group", "Keyword"]]
sets.each do |set|
    adgroup = set.split("　")[0]
    tmp = [].push(campain_name).push(adgroup).push(set)
    output_collection.push( tmp )
end
output_collection.to_tsv "output1.tsv"

# ファイルB出力
output_collection = [["Campaign", "Ad Group", "Headline", "Description Line 1", "Description Line 2", "Display URL", "Destination URL", "Device Preference", "Ad Status"]]
inputs[:words_a].each do |word|
    # ＃ <= replace target
    adgroup = word
    tmp = [campain_name, adgroup, title, sentence1.gsub(/＃/, word), sentence2.gsub(/＃/, word), disp_url, jump_url]
    output_collection.push( tmp )
end
output_collection.to_tsv "output2.tsv"

p "Generate is Done!"

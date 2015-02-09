# INPUT

テキストファイルに以下の形式で文章を入力していきます。
空の改行で区切ります。

文章１と文章２では`＃`を記述した場所が先頭のキーワードグループに置き換わります。（output参照）

```
キャンペーン名

広告グループ名

キーワードA
キーワードB
キーワードC
キーワードD
キーワードE
キーワードF
キーワードG

keywordイ
keywordロ
keywordハ
keywordニ

広告タイトル

＃文章1

文章2

http://disp.url/

http://jump.url/
```

# USAGE

`gen.rb`のディレクトリへ移動し

```
$ ruby gen.rb <input file name>
```

# OUTPUT

## output A

```tsv
Campaign	Ad Group	Keyword
キャンペーン名	広告グループ名	キーワードA　keywordイ
キャンペーン名	広告グループ名	キーワードA　keywordロ
キャンペーン名	広告グループ名	キーワードA　keywordハ
キャンペーン名	広告グループ名	キーワードA　keywordニ
キャンペーン名	広告グループ名	キーワードB　keywordイ
キャンペーン名	広告グループ名	キーワードB　keywordロ
キャンペーン名	広告グループ名	キーワードB　keywordハ
キャンペーン名	広告グループ名	キーワードB　keywordニ
キャンペーン名	広告グループ名	キーワードC　keywordイ
キャンペーン名	広告グループ名	キーワードC　keywordロ
キャンペーン名	広告グループ名	キーワードC　keywordハ
キャンペーン名	広告グループ名	キーワードC　keywordニ
キャンペーン名	広告グループ名	キーワードD　keywordイ
キャンペーン名	広告グループ名	キーワードD　keywordロ
キャンペーン名	広告グループ名	キーワードD　keywordハ
キャンペーン名	広告グループ名	キーワードD　keywordニ
キャンペーン名	広告グループ名	キーワードE　keywordイ
キャンペーン名	広告グループ名	キーワードE　keywordロ
キャンペーン名	広告グループ名	キーワードE　keywordハ
キャンペーン名	広告グループ名	キーワードE　keywordニ
キャンペーン名	広告グループ名	キーワードF　keywordイ
キャンペーン名	広告グループ名	キーワードF　keywordロ
キャンペーン名	広告グループ名	キーワードF　keywordハ
キャンペーン名	広告グループ名	キーワードF　keywordニ
キャンペーン名	広告グループ名	キーワードG　keywordイ
キャンペーン名	広告グループ名	キーワードG　keywordロ
キャンペーン名	広告グループ名	キーワードG　keywordハ
キャンペーン名	広告グループ名	キーワードG　keywordニ
```

## output B

```tsv
Campaign	Ad Group	Headline	Description Line 1	Description Line 2	Display URL	Destination URL	Device Preference	Ad Status
キャンペーン名	広告グループ名	広告タイトル	キーワードA文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	広告グループ名	広告タイトル	キーワードB文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	広告グループ名	広告タイトル	キーワードC文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	広告グループ名	広告タイトル	キーワードD文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	広告グループ名	広告タイトル	キーワードE文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	広告グループ名	広告タイトル	キーワードF文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	広告グループ名	広告タイトル	キーワードG文章1	文章2	http://disp.url/	http://jump.url/
```

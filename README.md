# INPUT

テキストファイルに以下の形式で文章を入力していきます。
空の改行で区切ります。

文章１と文章２では`＃`を記述した場所が先頭のキーワードグループに置き換わります。（output参照）

```
キャンペーン名

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
キャンペーン名	キーワードA	キーワードA　keywordイ
キャンペーン名	キーワードA	キーワードA　keywordロ
キャンペーン名	キーワードA	キーワードA　keywordハ
キャンペーン名	キーワードA	キーワードA　keywordニ
キャンペーン名	キーワードB	キーワードB　keywordイ
キャンペーン名	キーワードB	キーワードB　keywordロ
キャンペーン名	キーワードB	キーワードB　keywordハ
キャンペーン名	キーワードB	キーワードB　keywordニ
キャンペーン名	キーワードC	キーワードC　keywordイ
キャンペーン名	キーワードC	キーワードC　keywordロ
キャンペーン名	キーワードC	キーワードC　keywordハ
キャンペーン名	キーワードC	キーワードC　keywordニ
キャンペーン名	キーワードD	キーワードD　keywordイ
キャンペーン名	キーワードD	キーワードD　keywordロ
キャンペーン名	キーワードD	キーワードD　keywordハ
キャンペーン名	キーワードD	キーワードD　keywordニ
キャンペーン名	キーワードE	キーワードE　keywordイ
キャンペーン名	キーワードE	キーワードE　keywordロ
キャンペーン名	キーワードE	キーワードE　keywordハ
キャンペーン名	キーワードE	キーワードE　keywordニ
キャンペーン名	キーワードF	キーワードF　keywordイ
キャンペーン名	キーワードF	キーワードF　keywordロ
キャンペーン名	キーワードF	キーワードF　keywordハ
キャンペーン名	キーワードF	キーワードF　keywordニ
キャンペーン名	キーワードG	キーワードG　keywordイ
キャンペーン名	キーワードG	キーワードG　keywordロ
キャンペーン名	キーワードG	キーワードG　keywordハ
キャンペーン名	キーワードG	キーワードG　keywordニ
```

## output B

```tsv
Campaign	Ad Group	Headline	Description Line 1	Description Line 2	Display URL	Destination URL	Device Preference	Ad Status
キャンペーン名	キーワードA	広告タイトル	キーワードA文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	キーワードB	広告タイトル	キーワードB文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	キーワードC	広告タイトル	キーワードC文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	キーワードD	広告タイトル	キーワードD文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	キーワードE	広告タイトル	キーワードE文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	キーワードF	広告タイトル	キーワードF文章1	文章2	http://disp.url/	http://jump.url/
キャンペーン名	キーワードG	広告タイトル	キーワードG文章1	文章2	http://disp.url/	http://jump.url/
```

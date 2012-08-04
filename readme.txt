* フォント自体の著作権や改変，再配布などの注意事項はしっかりと目を通しておいて
ください．

--------------------------------------------------------------------------------
Flash DevelopとFlex SDKによるSkyrimのフォント作成
-------------------------------------------------
## 作成方法 ##

1. 下記 URL から FlashDevelop と Flex SDK をインストールします．
   Flex SDK は FlashDevelop に含まれています．

    - http://flashdevelop.jp

2. このアーカイブを解凍してできたフォルダの asset\fontsに変換したいトゥルータイプ
   フォント(拡張子.ttf)をコピーする．

3. このアーカイブを解凍してできたファイルの fonts_ja.as3proj をダブルクリック、
   または，FlashDevelop を起動した状態で トップメニュー → Project → Open Project
   で読み込む．

4. FlashDevelop の右側の Project パネルから src\Main.as をダブルクリックで開く

5. Main.as の27行目はインターフェース(メニューや字幕等)のフォント設定です。
   以下のようになっていると思われますので，これの src= 以下を自分の変換したい
   フォント名にしてください．

    [Embed(source = '../asset/fonts/GL-Tsukiji-4go-TESV.ttf', fontName = 'skyrim_every', embedAsCFF='false', mimeType = 'application/x-font')]

   - 例えばあずきフォント (azuki.ttf) を Skyrim のフォントにするには asset\fonts に
 azuki.ttf をコピーして24行目を以下のように修正します。

        [Embed(source = '../asset/fonts/azuki.ttf', fontName = 'skyrim_every', embedAsCFF='false', mimeType = 'application/x-font')]`

7. 修正が終わったら FlashDevelop のツールバーの▲マークを押すかキーボードの
   F5キーを押してください．
   問題がなければしばらく後に font_ja.swf と言うウィンドウが出てくるはずです．
   FlashDevelop の下の方の Output にも done と出ているはずです．

8. 全て完了すればこのアーカイブを解凍してできたフォルダの bin 以下に
   fontconfig.txt と fonts_ja.swf が出来ていますのでこれらを Skyrim の
   ゲームフォルダ以下の data\Interface にコピーします。

これでフォントの作成は終了です。

--------------------------------------------------------------------------------
応用
----
Main.as の [Embed～ の  fontName = 'skyrim_every' は
fontconfig.txt で設定する際のフォント名になります．

ですので，特定のフォントだけ変えたい、例えばダイアログ(会話)フォントだけ違う物に
したいと思ったら，

        [Embed(source = '../asset/fonts/cinecaption227.TTF', fontName = 'skyrim_dialog', mimeType = 'application/x-font')]
        var dialogfont:Class;

という2行を29行目以下に追記して、fontconfig.txt の

    map "$DialogueFont" = "skyrim_every" Normal

を

    map "$DialogueFont" = "skyrim_dialog" Normal

に修正してやれば会話だけ別のフォントになります。

-------------------------------------------------------------------------------
更新履歴
--------
* version r1 (rusutaku 改変版)
-- FlashPlayer で開くと表示デモが見られるようにした
-- Flex SDK 4 用に Embed メタデータタグに embedAsCFF='false' を追加
-- 参考：http://blog.kaihatsubu.com/?p=1697
-- skyrim_books は rusutaku が使わないので削除した
* v0.2 (http://ux.getuploader.com/skyrimJP/download/177/fonts_ja.swf_v0.2.7z)
-- Main.asの方はskyrim_booksでfontconfig.txtはskyrim_bookとフォント名をミスして
いたので修正
* v0.1
-- 初期リリース

--------------------------------------------------------------------------------
免責
----
このファイルアーカイブを利用の結果生じた問題，損害に対して原作者は一切の責任を
負いません．

--------------------------------------------------------------------------------
改変再配布に関して
----
このファイルのアーカイブは自由に改変，再配布をしていただいて構いません．
ただし，改変した際に発生した問題は全て改変者が負うものとします．原作者は
一切関知致しません．


package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.text.Font;
	/**
	 * ...
	 * @author rusutaku
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			// sourceにasset/fontに格納したフォントファイル名をいれる fontName は fontconfig.txt 内で使用する文字列にする。embedAsCCF, mimeTypeはそのまま
			[Embed(source = '../asset/fonts/GL-Tsukiji-4go-TESV.ttf', fontName = 'skyrim_every', embedAsCFF='false', mimeType = 'application/x-font')]
			var everyfont:Class; // この変数は特に使うことは無いので自由に名前を決めて良い
			
			// 以下は表示デモ用コード
			var arr:Array = Font.enumerateFonts( false );
			var i:int = 0;
			for each(var f:Font in arr) {
				// テキストフォーマットの初期化
				var fmt:TextFormat = new TextFormat();
				fmt.font = f.fontName;
				fmt.size = 30;
				// テキストフィールドの初期化
				var tf:TextField = new TextField();
				tf.width = 640;
				tf.height = 280;
				tf.y = tf.height * i;
				tf.type = TextFieldType.INPUT;
				tf.embedFonts = true;
				tf.defaultTextFormat = fmt;
				tf.wordWrap = true;
				
				tf.text = f.fontName + "\n" +
				         "この質問を聞くと若林博士は、何やらハッとしたらしかった。\n" +
				         "0123456伊イい呂ロろ波ハは匂へど789\n" +
						 "おはようございます。お休みなさい。";
				addChild(tf);
				i++;
			}
			
		}
		
	}
	
}
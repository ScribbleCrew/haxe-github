package haxegithub.flixel;

#if flixel
import flixel.FlxG;
import openfl.display.BitmapData;
import haxe.Http;

class GithubUtil {
	public static function image(imageUrl:String, ?unique:Bool = false, ?key:String = '') {
		var api = new Http(imageUrl); // Custom Method
		var responseBytes = new haxe.io.BytesOutput();
		api.request();
		return FlxG.bitmap.add(BitmapData.fromBytes(responseBytes.getBytes()), unique, key);
	}
}
#end

package haxegithub.flixel;

#if flixel
import flixel.FlxG;
import openfl.display.BitmapData;
import haxe.Http;

class GithubUtil {
	public static function image(imageUrl:String, ?unique:Bool = false, ?key:String = '') {
		var api = new Http(imageUrl); // Custom Method
		api.request();
		return FlxG.bitmap.add(BitmapData.fromBytes(api.responseBytes), unique, key);
	}
}
#end

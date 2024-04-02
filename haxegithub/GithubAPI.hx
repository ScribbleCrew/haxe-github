package haxegithub;

import haxe.Http;
import haxe.Json;
import haxe.io.Path;
import haxe.io.BytesOutput;
import haxe.io.Bytes;

class GithubAPI {
	/**
	 * pretty self explanatory 
	 */
	public static final apiUrl:String = 'https://api.github.com/';

	/**
	 * It's for the more complex things
	 */
	public var token:Null<String> = null;

	/**
	 * The Request Value
	 */
	public var data:String = "";

	/**
	 * The Request Bytes Value
	 */
	public var bytes:Null<Bytes> = null;

	/**
	 * The Current Error
	 */
	public var current_error:Null<String> = null;

	/**
	 * JSON Data
	 */
	public var json:Dynamic = null;

	public function new(?token:String):Void {
		this.token = token;
	}

	/**
	 * Request to Github API
	 * @param url 
	 * @param post 
	 * @param data 
	 * @param method 
	 */
	public function request(url:String, post:Bool = false, data:Null<Any> = null, method:String = 'GET'):Void {
		var api = new Http(Path.join([apiUrl, url]));
		api.setHeader("User-Agent", "request");
		if (token != null)
			api.setHeader("Authorization", "token " + token);
		if (data != null)
			api.setPostData(Json.stringify(data));
		var output = new BytesOutput();

		api.onError = function(e) errorhandler(e);

		api.customRequest(post, output, null, method.toUpperCase());

		var response = output.getBytes();

		bytes = response;
		data = response.toString();
		json = Json.parse(data);
	}

	/**
	 * Easy Error Tracer
	 * @param motive 
	 */
	private function errorhandler(motive:String = 'Unknown') {
		current_error = motive;
		Sys.println('[haxe-github Error]: $current_error');
	}
}

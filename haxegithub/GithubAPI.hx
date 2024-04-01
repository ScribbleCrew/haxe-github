package haxegithub;

import haxe.Http;
import haxe.Json;
import haxe.io.Path;

class GithubAPI {
	/**
	 * pretty self explanatory 
	 */
	public var apiUrl:String = 'https://api.github.com/';

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
	public var bytes:Null<haxe.io.Bytes> = null;

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
		var responseBytes = new haxe.io.BytesOutput();

		api.onError = function(e) errorhandler(current_error = e);

		api.customRequest(post, responseBytes, null, method.toUpperCase());

		var response = responseBytes.getBytes();

		bytes = response;
		data = response.toString();
		json = Json.parse(data);
	}

	/**
	 * Easy Error Tracer
	 * @param motive 
	 */
	private function errorhandler(motive:String = 'Unknown') {
		Sys.println('[haxe-github Error]: $motive');
	}
}
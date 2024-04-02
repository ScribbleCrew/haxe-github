package haxegithub.utils;

/**
 * Github User Util
 */
class User {
	/**
	 * Return the User JSON
	 * @param user 
	 * @return Dynamic
	 */
	public static function get(user:String):Dynamic {
		var api = new GithubAPI();
		api.request('users/$user');
		return api.json;
	}

	/**
	 * Return the Full User JSON, Requires a Token!
	 * @param token 
	 * @return Dynamic
	 */
	public static function getCurrent(token:String):Dynamic {
		var api = new GithubAPI(token);
		api.request('user');
		return api.json;
	}

	/**
	 * Return the User Followers JSON
	 * @param user 
	 * @return Array<Dynamic>
	 */
	public static function getFollowers(user:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('users/$user/followers');
		return api.json;
	}

	/**
	 * Return the User Following Json
	 * @param user 
	 * @return Array<Dynamic>
	 */
	public static function getFollowing(user:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('users/$user/following');
		return api.json;
	}

	/**
	 * Return the Repositorys from a User
	 * @param user 
	 * @return Array<Dynamic>
	 */
	public static function getRepositorys(user:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('users/$user/repo');
		return api.json;
	}

	/**
	 * Return the Gits from a User
	 * @param user 
	 * @return Array<Dynamic>
	 */
	public static function getGists(user:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('users/$user/gists');
		return api.json;
	}

	/**
	 * Return the Starred Repositorys from a User
	 * @param user 
	 * @return Array<Dynamic>
	 */
	public static function getStarred(user:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('users/$user/starred');
		return api.json;
	}

	/**
	 * Return the Organizations from a User
	 * @param user 
	 * @return Array<Dynamic>
	 */
	public static function getOrganizations(user:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('users/$user/orgs');
		return api.json;
	}

	/**
	 * Return the Events from a User
	 * @param user 
	 * @return Array<Dynamic>
	 */
	public static function getEvents(user:String, ?received:Bool = true):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('users/$user/' + (received ? 'received_events' : 'events'));
		return api.json;
	}
}

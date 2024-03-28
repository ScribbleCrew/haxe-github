package haxegithub.utils;

/**
 * Github User Util
 */
class User {
	/**
	 * Return the User JSON
	 * @param user 
	 * @return api.json
	 */
	public static function get(user:String):Dynamic {
		var api = new GithubAPI();
		api.request('users/$user');
		return api.json;
	}

	/**
	 * Return the Full User JSON, Requires the Token
	 * @param token 
	 * @return api.json
	 */
	public static function getCurrent(token:String):Dynamic {
		var api = new GithubAPI(token);
		api.request('user');
		return api.json;
	}

	/**
	 * Return the User Followers JSON
	 * @param user 
	 * @return api.json
	 */
	public static function getFollowers(user:String):Dynamic {
		var api = new GithubAPI();
		api.request('users/$user/followers');
		return api.json;
	}

	/**
	 * Return the User Following Json
	 * @param user 
	 * @return api.json
	 */
	public static function getFollowing(user:String):Dynamic {
		var api = new GithubAPI();
		api.request('users/$user/following');
		return api.json;
	}

	/**
	 * Return the Repositorys from the User
	 * @param user 
	 * @return Dynamic
	 */
	public static function getRepositorys(user:String):Dynamic {
		var api = new GithubAPI();
		api.request('users/$user/repo');
		return api.json;
	}

	/**
	 * Return the Gits from the user
	 * @param user 
	 * @return Dynamic
	 */
	public static function getGists(user:String):Dynamic {
		var api = new GithubAPI();
		api.request('users/$user/gists');
		return api.json;
	}

	/**
	 * Return the Starred Repositorys from the User
	 * @param user 
	 * @return Dynamic
	 */
	public static function getStarred(user:String):Dynamic {
		var api = new GithubAPI();
		api.request('users/$user/starred');
		return api.json;
	}
}

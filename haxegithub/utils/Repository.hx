package haxegithub.utils;

/**
 * Github Repository Util
 */
class Repository {
	/**
	 * Return the Repository JSON
	 * @param user 
	 * @param repo 
	 * @return api.json
	 */
	public static function get(user:String, repo:String):Dynamic {
		var api = new GithubAPI();
		api.request('repos/$user/$repo');
		return api.json;
	}

	/**
	 * get Contributors from a Repository
	 * @param user 
	 * @param repo 
	 * @return api.json
	 */
	public static function getContributors(user:String, repo:String):Array<Any> {
		var api = new GithubAPI();
		api.request('repos/$user/$repo/contributors');
		return api.json;
	}

	/**
	 * get Collaborators from a Repository, Requires a Token!
	 * @param token
	 * @param user 
	 * @param repo 
	 * @return api.json
	 */
	public static function getCollaborators(token:String, user:String, repo:String):Array<Dynamic> {
		var api = new GithubAPI(token);
		api.request('repos/$user/$repo/collaborators');
		return api.json;
	}

	/**
	 * get releases from a Repository
	 * @param user 
	 * @param repo 
	 */
	public static function getReleases(user:String, repo:String, ?lastest:Bool = false):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('repos/$user/$repo/releases');
		return api.json;
	}
}

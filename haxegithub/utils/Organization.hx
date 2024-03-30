package haxegithub.utils;

/**
 * Github Organization Util
 */
class Organization {
	/**
	 * Return the Organization JSON
	 * @param organization 
	 * @return Dynamic
	 */
	public static function get(organization:String):Dynamic {
		var api = new GithubAPI();
		api.request('orgs/$organization');
		return api.json;
	}

	/**
	 * Return the Organization Repositorys JSON
	 * @param organization 
	 * @return Array<Dynamic>
	 */
	public static function getRepositorys(organization:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('orgs/$organization/repos');
		return api.json;
	}

	/**
	 * Return the Organization Members JSON
	 * @param organization 
	 * @return Array<Dynamic>
	 */
	public static function getMembers(organization:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('orgs/$organization/members');
		return api.json;
	}
}

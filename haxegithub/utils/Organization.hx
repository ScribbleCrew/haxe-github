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
	 * Return the Organization Events JSON
	 * @param organization 
	 * @return Array<Dynamic>
	 */
	public static function getEvents(organization:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('orgs/$organization/events');
		return api.json;
	}

	/**
	 * Return the Organization Hooks JSON
	 * @param organization 
	 * @return Array<Dynamic>
	 */
	public static function getHooks(organization:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('orgs/$organization/hooks');
		return api.json;
	}

	/**
	 * Return the Organization Issues JSON
	 * @param organization
	 * @return Array<Dynamic>
	 */
	public static function getIssues(organization:String):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('orgs/$organization/issues');
		return api.json;
	}

	/**
	 * Return the Organization Members JSON
	 * @param organization 
	 * @return Array<Dynamic>
	 */
	public static function getMembers(organization:String, ?public_members:Bool = true):Array<Dynamic> {
		var api = new GithubAPI();
		api.request('orgs/$organization/' + (public_members ? 'public_members' : 'members'));
		return api.json;
	}
}

package haxegithub.objects;

import haxegithub.utils.Repository;
import haxegithub.utils.User;

/**
 * 
 */
class TokenUser {
	/**
	 * User token, if you don't know how to get a token look at the [Github Documentation](https://docs.github.com/en/enterprise-server@3.9/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)
	 */
	public var token:Null<String> = null;

	/**
	 * The Request Value Parsed in JSON
	 */
	public var json:Dynamic = null;

	/**
	 * is a shortcut for ```json.name```
	 */
	public var username(get, never):String;

	/**
	 * If ```json.name``` is ```null``` it will use this string
	 */
	public var default_username:String = "Null";

	function get_username() {
		return json.name ?? default_username;
	}

	/**
	 * @param token 
	 */
	public function new(?token:String):Void {
		this.token = token;
		reload();
	}

	/**
	 * Reload the User variables
	 */
	inline public function reload() {
		json = User.getCurrent(token) ?? User.get(username);
		onReload();
	}

	/**
	 * This Function will be executed when the User is reloaded
	 */
	public dynamic function onReload() {}

	/**
	 * return the Followers JSON
	 * @return Array<Dynamic>
	 */
	public function getFollowers():Array<Dynamic>
		return User.getFollowers(username);

	/**
	 * return the Following JSON
	 * @return Array<Dynamic>
	 */
	public function getFollowing():Array<Dynamic>
		return User.getFollowing(username);

	/**
	 * return the Repositorys JSON
	 * @return Array<Dynamic>
	 */
	public function getRepositorys():Array<Dynamic>
		return User.getRepositorys(username);

	/**
	 * return the Gists JSON
	 * @return Array<Dynamic>
	 */
	public function getGists():Array<Dynamic>
		return User.getGists(username);

	/**
	 * return the Organizations JSON
	 * @return Array<Dynamic>
	 */
	public function getOrganizations():Array<Dynamic>
		return User.getOrganizations(username);

	/**
	 * return the Starred JSON
	 * @return Array<Dynamic>
	 */
	public function getStarred():Array<Dynamic>
		return User.getStarred(username);

	/**
	 * return the Events JSON
	 * @param received 
	 * @return Array<Dynamic>
	 */
	public function getEvents(?received:Bool = true):Array<Dynamic>
		return User.getEvents(username, received);

	/**
	 * Follow a user
	 * @param target_user 
	 */
	public function follow(target_user:String) {
		var api = new GithubAPI(token);
		api.request('user/following/' + target_user, true, null, 'PUT');
	}

	/**
	 * Unfollow a User
	 * @param target_user 
	 */
	public function unfollow(target_user:String) {
		var api = new GithubAPI(token);
		api.request('user/following/' + target_user, true, null, 'DELETE');
	}

	/**
	 * Delete a Repository
	 * @param target_user 
	 */
	public function deleteRepository(target_repo:String) {
		var api = new GithubAPI(token);
		api.request('/repos/$username/$target_repo', false, null, 'DELETE');
	}

	/**
	 * Update a Repository
	 * @param target_user 
	 * @param data
	 */
	public function updateRepository(target_repo:String, data:Dynamic) {
		var api = new GithubAPI(token);
		api.request('/repos/$username/$target_repo', true, data, 'PATCH');
	}

	/**
	 * Get a Repository
	 * @param target_repo
	 */
	public function getRepository(target_repo:String)
		return Repository.get(username, target_repo);
}

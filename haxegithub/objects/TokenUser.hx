package haxegithub.objects;

import haxegithub.utils.Repository;
import haxegithub.utils.User;

class TokenUser {
	/**
	 * User token, if you don't know how to get a token look at the Github documentation:
	 * #### https://docs.github.com/en/enterprise-server@3.9/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens
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

	function get_username() {
		return json.name ?? "NULL";
	}

	public function new(?token:String):Void {
		this.token = token;
		reload();
	}

	/**
	 * Reload the User variables
	 */
	inline public function reload() {
		json = User.getCurrent(token);
		onReload();
	}

	/**
	 * This Function will be executed when the User is reloaded
	 */
	public dynamic function onReload() {}

	public function getFollowers():Array<Dynamic>
		return User.getFollowers(username);

	public function getFollowing():Array<Dynamic>
		return User.getFollowing(username);

	public function getRepositorys():Array<Dynamic>
		return User.getRepositorys(username);

	public function getGists():Array<Dynamic>
		return User.getGists(username);

	public function getOrganizations():Array<Dynamic>
		return User.getOrganizations(username);

	public function getStarred():Array<Dynamic>
		return User.getStarred(username);

	public function getEvents(?received:Bool = true)
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

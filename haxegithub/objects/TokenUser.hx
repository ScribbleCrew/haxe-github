package haxegithub.objects;

import haxegithub.utils.User;

class TokenUser {
	public var token:Null<String> = null;
	public var json:Dynamic = null;

	public function new(?token:String):Void {
		this.token = token;
		reload();
	}

	public function reload() {
		json = User.getCurrent(token);
	}

	public function follow(target_user:String) {
		var api = new GithubAPI(token);
		api.request('user/following/' + target_user, true, null, 'PUT');
	}

	public function unfollow(target_user:String) {
		var api = new GithubAPI(token);
		api.request('user/following/' + target_user, true, null, 'DELETE');
	}

	public function deleteRepository(target_repo:String) {
		var api = new GithubAPI(token);
		api.request('/repos/${json.name}/$target_repo', false, null, 'DELETE');
	}

	public function updateRepository(target_repo:String, data:Dynamic) {
		var api = new GithubAPI(token);
		api.request('/repos/${json.name}/$target_repo', true, data, 'PATCH');
	}
}

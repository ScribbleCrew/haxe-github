package haxegithub.utils;

import haxe.macro.Expr.Case;

typedef SearchSpecification = {
	@:optional var type:String;
	var page:Int;
	var per_page:Int;
	@:optional var sort:String;
	@:optional var order:String;
}

/**
 * Github Search Util
 */
class Search {
	/**
	 * Search a Repository
	 * @param name 
	 * @param specification 
	 * @return api.json
	 */
	public static function repository(name:String, ?specification:SearchSpecification) {
		if (specification == null)
			specification = {
				page: 0,
				per_page: 10
			};
		var api = new GithubAPI();
		api.request('search/repositories?q=$name' + parseObjectToSpecification(specification));
		return api.json;
	}

	/**
	 * Search a User
	 * @param name 
	 * @param specification
	 * @return api.json 
	 */
	public static function user(name:String, ?specification:SearchSpecification) {
		if (specification == null)
			specification = {
				page: 0,
				per_page: 10
			};
		var api = new GithubAPI();
		api.request('search/users?q=$name' + parseObjectToSpecification(specification));
		return api.json;
	}

	/**
	 * Search a Topic
	 * @param name 
	 * @param specification 
	 * @return api.json
	 */
	public static function topic(name:String, ?specification:SearchSpecification) {
		if (specification == null)
			specification = {
				page: 0,
				per_page: 10
			};
		var api = new GithubAPI();
		api.request('search/topics?q=$name' + parseObjectToSpecification(specification));
		return api.json;
	}

	/**
	 * Search an Issue
	 * @param name 
	 * @param specification 
	 * @return api.json
	 */
	public static function issue(name:String, ?specification:SearchSpecification) {
		if (specification == null)
			specification = {
				page: 0,
				per_page: 10
			};
		var api = new GithubAPI();
		api.request('search/issues?q=$name' + parseObjectToSpecification(specification));
		return api.json;
	}

	/**
	 * Search a Commit
	 * @param name 
	 * @param specification 
	 * @return api.json
	 */
	public static function commit(name:String, ?specification:SearchSpecification) {
		if (specification == null)
			specification = {
				page: 0,
				per_page: 10
			};
		var api = new GithubAPI();
		api.request('search/commits?q=$name' + parseObjectToSpecification(specification));
		return api.json;
	}

	/**
	 * Search a Label
	 * @param name 
	 * @param specification 
	 * @return api.json
	 */
	public static function label(name:String, ?specification:SearchSpecification) {
		if (specification == null)
			specification = {
				page: 0,
				per_page: 10
			};
		var api = new GithubAPI();
		api.request('search/labels?q=$name' + parseObjectToSpecification(specification));
		return api.json;
	}

	/**
	 * Search Code
	 * @param name 
	 * @param specification 
	 * @return api.json
	 */
	public static function code(name:String, ?specification:SearchSpecification) {
		if (specification == null)
			specification = {
				page: 0,
				per_page: 10
			};
		var api = new GithubAPI();
		api.request('search/code?q=$name' + parseObjectToSpecification(specification));
		return api.json;
	}

	/**
	 * Parse the Specification Object into a Part of the GitHub Search URL
	 * @param object 
	 */
	private static function parseObjectToSpecification(object:SearchSpecification) {
		var text = '';
		if (object.type != null) {
			text += '+language:${object.type}';
		}
		text += '&page=${object.page}';
		text += '&per_page=${object.per_page}';
		if (object.sort != null) {
			text += '&sort=${object.sort}';
		}
		if (object.order != null) {
			text += '&order=${object.order}';
		}

		return text;
	}
}

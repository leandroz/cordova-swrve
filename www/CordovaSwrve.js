var argscheck = require('cordova/argscheck'),
	utils = require('cordova/utils'),
	exec = require('cordova/exec');

module.exports = {

	initialize: function(echo) {
		console.log('initialize');
		exec(null,
			null,
			"CordovaSwrve",
			"initialize", [echo]);
	}

};
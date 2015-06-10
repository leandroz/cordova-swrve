var argscheck = require('cordova/argscheck'),
	utils = require('cordova/utils'),
	exec = require('cordova/exec');

module.exports = {

	initialize: function(app_id, api_key) {
		console.log('initialize');
		exec(null,
			null,
			"CordovaSwrve",
			"initialize", [app_id, api_key]);
	},

	sendEventWithPayload: function(event_name, payload) {
		console.log('sendEventWithPayload');
		exec(null,
			null,
			"CordovaSwrve",
			"sendEventWithPayload", [event_name, payload]);
	}

};
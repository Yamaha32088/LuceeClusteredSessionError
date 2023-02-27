/**
********************************************************************************
Copyright from 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.ortussolutions.com
********************************************************************************
*/
component {
	this.cache.connections["RedisSession"] = {
			class: 'lucee.extension.io.cache.redis.simple.RedisCache'
		, bundleName: 'redis.extension'
		, bundleVersion: '3.0.0.21-BETA'
		, storage: true
		, custom: {}
	};

	this.name='TestingApp';
	this.sessionManagement=true;
	this.setClientCookies=true;
	this.sessionStorage="RedisSession";
	this.sessionCluster=true;

	public void function onSessionStart() {
		session.trackingId = createGUID();
	}

}

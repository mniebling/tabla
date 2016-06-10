var _   = require('lodash')
var Vue = require('vue')

// rhythms
// todo: require directory
var teenTaal = require('./rhythms/teen-taal.js')
var ekTaal = require('./rhythms/ek-taal.js')


var vm = new Vue({

	el: '#app',

	data: {
		allRhythms: [
			teenTaal,
			ekTaal
		],
		currentRhythm: {}
	},

	methods: {
		changeRhythm: function (newRhythm) {
			vm.currentRhythm = newRhythm;
		}
	}
})

// Init
vm.currentRhythm = _.first(vm.allRhythms)

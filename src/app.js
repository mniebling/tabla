var _   = require('lodash')
var Vue = require('vue')

// rhythms
// todo: require directory
var teenTaal = require('./rhythms/teen-taal.js')
var ekTaal = require('./rhythms/ek-taal.js')

var Rhythm = require('./components/rhythm.vue')
var Measure = require('./components/measure.vue')


var vm = new Vue({

	el: '#app'

, data: {
		allRhythms: [
			teenTaal,
			ekTaal
		],
		currentRhythm: {}
	}

, components: {
		rhythm: Rhythm
	, measure: Measure
	}

, methods: {
		changeRhythm: function (newRhythm) {
			vm.currentRhythm = newRhythm
		}
	}
})

// Init
vm.currentRhythm = _.first(vm.allRhythms)

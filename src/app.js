var _   = require('lodash')
var Vue = require('vue')

// rhythms
// todo: require directory
var chauTaal = require('./rhythms/chau-taal.js')
var ekTaal = require('./rhythms/ek-taal.js')
var jhapTaal = require('./rhythms/jhap-taal.js')
var jhumaraTaal = require('./rhythms/jhumara-taal.js')
var kaherwaTaal = require('./rhythms/kaherwa-taal.js')
var kaidafarodastTaal = require('./rhythms/kaidafarodast-taal.js')
var soolTaal = require('./rhythms/sool-taal.js')
var teenTaal = require('./rhythms/teen-taal.js')

var Rhythm = require('./components/rhythm.vue')
var Measure = require('./components/measure.vue')


var vm = new Vue({

	el: '#app'

, data: {
		allRhythms: [
			chauTaal,
			ekTaal,
			jhapTaal,
			jhumaraTaal,
			kaherwaTaal,
			kaidafarodastTaal,
			soolTaal,
			teenTaal
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

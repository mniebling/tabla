<template>
	<measure
		v-for="measure in rhythm.measures"
		:measure="measure">
	</measure>
</template>


<script>
var Measure = require('./measure.vue')

module.exports = {
	name: 'rhythm'

, props: {
		rhythm: Object
	}

, components: {
		measure: Measure
	}
}
</script>


<style>

</style>

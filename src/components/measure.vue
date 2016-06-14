<template>
	<div class="c-measure">
		<div
			class="c-measure__beat"
			v-for="beat in measure">{{ beat.bol }}</div>
	</div>
</template>


<script>
module.exports = {
	name: 'measure'

, props: {
		measure: Array
	}
}
</script>


<style>
.c-measure {
	display: flex;
	margin-bottom: 5px;
	width: 40%;
}

.c-measure__beat {
	flex-basis: 125px;
}
</style>

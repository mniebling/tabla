<template>
	<div class="c-measure">
		<div
			class="c-measure__beat"
			v-for="beat in measure">

			<div class="c-measure__beat__accent">{{ beat.accent }}</div>
			<div class="c-measure__beat__bol">{{ beat.bol }}</div>
			<!-- <div class="c-measure__beat__number">{{ $index + 1 }}</div> -->
		</div>
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
	margin-bottom: 25px;
}

.c-measure__beat {
	flex-basis: 100px;
	font-size: 18px;
	margin-right: 10px;
}

.c-measure__beat__accent {
	color: #999;
	height: 21px;
	padding-left: 5px;
}

.c-measure__beat__bol {
	background-color: #f5f5f5;
	padding: 4px 8px;
}

.c-measure__beat__number {
	color: #72bcd4;
	font-size: 14px;
	padding-left: 5px;
}
</style>

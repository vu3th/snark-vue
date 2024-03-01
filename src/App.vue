<script setup lang="ts">
import { groth16 } from 'snarkjs'
import { onMounted } from 'vue'

const domain = window.location.origin

onMounted(async () => {
	const { proof, publicSignals } = await groth16.fullProve(
		{ a: 3, b: 7 },
		`${domain}/circuit.wasm`,
		`${domain}/circuit_0001.zkey`,
	)
	console.log(proof, publicSignals)
})
</script>

<template>
	<div>hello world</div>
</template>

<style scoped></style>

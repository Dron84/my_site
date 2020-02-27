<template>
	<svg version="1.1" class="mouseScroll" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 148.4 399.4" style="enable-background:new 0 0 148.4 399.4;" xml:space="preserve">
<g class="mouse">
	<path d="M76.7,181.2c-38.7,0-70.1,31.4-70.1,70.1v70.2c0,38.7,31.5,70.1,70.1,70.1s70.1-31.4,70.1-70.1v-70.2
		C146.8,212.7,115.4,181.2,76.7,181.2z M139.1,321.5c0,34.4-28,62.3-62.3,62.3s-62.3-28-62.3-62.3v-70.2c0-34.4,28-62.3,62.3-62.3
		s62.3,28,62.3,62.3V321.5z"/>
	<path ref='roller' d="M76.7,204.6c-2.2,0-3.9,1.7-3.9,3.9v35.3c0,2.2,1.7,3.9,3.9,3.9s3.9-1.7,3.9-3.9v-35.3C80.6,206.3,78.9,204.6,76.7,204.6z"
		/>
</g>
<g class="scroll">
	<path ref="scroll_1" d="M60.7,59.1h32.1c1.8,0,3.2-1.4,3.2-3.1S94.5,53,92.8,53H60.7c-1.8,0-3.2,1.4-3.2,3.1
		C57.5,57.8,58.9,59.1,60.7,59.1z"/>
	<path ref="scroll_2" d="M92.8,68.4H60.7c-1.8,0-3.2,1.4-3.2,3.1s1.4,3.1,3.2,3.1h32.1c1.8,0,3.2-1.4,3.2-3.1
		C96,69.8,94.5,68.4,92.8,68.4z"/>
	<path ref="scroll_3" d="M92.8,83.8H60.7c-1.8,0-3.2,1.4-3.2,3.1s1.4,3.1,3.2,3.1h32.1c1.8,0,3.2-1.4,3.2-3.1S94.5,83.8,92.8,83.8z"/>
	<path ref="scroll_4" d="M92.8,99.1H60.7c-1.8,0-3.2,1.4-3.2,3.1s1.4,3.1,3.2,3.1h32.1c1.8,0,3.2-1.4,3.2-3.1S94.5,99.1,92.8,99.1z"/>
	<path ref="scroll_5" d="M92.8,114.5H60.7c-1.8,0-3.2,1.4-3.2,3.1c0,1.7,1.4,3.1,3.2,3.1h32.1c1.8,0,3.2-1.4,3.2-3.1
		C96,115.9,94.5,114.5,92.8,114.5z"/>
	<path ref="scroll_up" d="M60.7,43.8h32.1c1.1,0,2.1-0.6,2.7-1.5c0.6-0.9,0.6-2,0.1-3l-16-30.8c-1.1-2.1-4.7-2.1-5.7,0l-16,30.8
		c-0.5,1-0.4,2.1,0.1,3C58.5,43.2,59.5,43.8,60.7,43.8z M76.7,16.8l10.9,20.8H65.9L76.7,16.8z"/>
	<path ref="scroll_down" d="M92.8,129.9H60.7c-1.1,0-2.1,0.6-2.7,1.5c-0.6,0.9-0.6,2-0.1,3l16,30.8c0.5,1,1.7,1.7,2.9,1.7s2.3-0.7,2.9-1.7
		l16-30.8c0.5-1,0.4-2.1-0.1-3C94.9,130.4,93.9,129.9,92.8,129.9z M76.7,156.8L65.9,136h21.7L76.7,156.8z"/>
</g>
</svg>
</template>

<script>
    export default {
        name: "mouseScroll",
		methods:{
            animation(){
                setTimeout(()=>{
                    this.$refs.scroll_5.style.display = 'none'
					setTimeout(_=>{
                        this.$refs.scroll_4.style.display = 'none'
                        setTimeout(_=>{
                            this.$refs.scroll_3.style.display = 'none'
                            setTimeout(_=>{
                                this.$refs.scroll_2.style.display = 'none'
                                setTimeout(_=>{
                                    this.$refs.scroll_1.style.display = 'none'
                                },500)
                            },500)
                        },500)
					},500)

                },3000)
                setTimeout(()=>{
                    this.$refs.scroll_5.style.display = 'block'
					setTimeout(_=>{
                        this.$refs.scroll_4.style.display = 'block'
                        setTimeout(_=>{
                            this.$refs.scroll_3.style.display = 'block'
                            setTimeout(_=>{
                                this.$refs.scroll_2.style.display = 'block'
                                setTimeout(_=>{
                                    this.$refs.scroll_1.style.display = 'block'
                                },500)
                            },500)
                        },500)
					},500)

                },3500)
			},
			rollerAnimation(){
				this.$refs.roller.style.transform = 'scaleY(1.1)'
                setTimeout(_=>{
                    this.$refs.roller.style.transform = 'scaleY(1)'
                },500)
			}
		},
		mounted(){
            setInterval(_=>{
                this.animation()
                this.rollerAnimation()
			},4000)
		}
    }
</script>
<style scoped>
	.mouseScroll{
		height: 100px;
		margin: 0 auto;
		display: block;
		cursor: inherit;
	}
	path{
		fill: rgba(255,255,255,.4)
	}
	.mouseScroll:hover path{
		fill: rgba(255,255,255,.7)
	}
</style>
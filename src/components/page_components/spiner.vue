<template>
    <div class="spinerwrapper">
        <div class="spiner">
            <div class="spiner_left" @click="swipe('left')">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                     height="121px">
                    <path fill-rule="evenodd" fill="rgb(100, 174, 249)"
                          d="M24.004,0.351 L3.292,60.898 L3.282,60.897 L23.308,120.648 L20.375,120.999 L-0.004,60.193 L0.452,60.138 L21.024,0.000 L24.004,0.351 Z"/>
                </svg>
            </div>
            <div class="work">
                <div class="wrapper" :style="'right: '+spinPos+'px; width: '+width+'px;'">
                    <div class="item" v-for="img in imgArray" @mouseover="showDesc(img)" @mouseout="hideDesc()">
                        <h3>{{img.h3}}</h3>
                        <img :src="img.img" alt="">
                        <span class="date">{{img.data}}</span>
                    </div>
                </div>
            </div>
            <div class="spiner_right" @click="swipe('right')">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                     height="121px">
                    <path fill-rule="evenodd" fill="rgb(100, 174, 249)"
                          d="M24.004,60.193 L3.625,120.999 L0.692,120.648 L20.718,60.897 L20.707,60.898 L-0.004,0.351 L2.976,0.000 L23.548,60.138 L24.004,60.193 Z"/>
                </svg>
            </div>
        </div>
        <div class="desc">{{desc}}</div>
    </div>
</template>

<script>
    import Vue from 'vue'
    import vuetouch from 'vue2-touch-events'

    Vue.use(vuetouch)
    export default {
        name: "spiner",
        data() {
            return {
                spinPos: 0,
                defDesc: 'Тут будет описание при нажатии или навидении на какую лиюо работу',
                desc: '',
            }
        },
        props: {
            imgArray: {
                type: Array,
                default: []
            },
        },
        methods: {
            swipe(what) {
                console.log('width', this.width, 'spinpos', this.spinPos)
                if (what == 'left') {
                    if (this.spinPos > 0)
                        this.spinPos = this.spinPos - 300
                } else if (what == 'right') {
                    if (this.spinPos < this.width)
                        this.spinPos = this.spinPos + 300
                }
            },
            showDesc(img) {
                this.desc = img.content
            },
            hideDesc() {
                this.desc = this.defDesc
            }
        },
        computed: {
            width(){
                if(this.imgArray!==undefined){
                    if (this.imgArray.length > 5) {
                        return (this.imgArray.length - 3) * 300
                    } else {
                        return this.imgArray.length * 300
                    }
                }
            }
        },
        mounted() {
            this.hideDesc()
        }
    }
</script>

<style scoped lang="sass">
    @import "../sass/vars"
    .modal
        position: absolute !important
        top: 0
        left: 0
        background-color: rgba(0, 0, 0, 0.7)
        width: 100vw
        height: 100vh
        z-index: 100000
        display: none

    .spiner
        margin-top: 30px
        margin-bottom: 30px
        height: 200px
        display: grid
        grid-template-columns: 25px 1fr 25px
        grid-template-areas: "left spin right"
        align-items: center
        &_left
            grid-area: left
            width: 24px
            height: 121px
            z-index: 9999
            &:hover
                transition: all .3s ease-in-out
                transform: scale(1.2)
                cursor: pointer
        &_right
            grid-area: right
            width: 24px
            height: 121px
            z-index: 9999
            &:hover
                transition: all .3s ease-in-out
                transform: scale(1.2)
                cursor: pointer

    .work
        grid-area: spin
        height: 250px
        display: flex
        overflow: hidden
        .wrapper
            display: inline-flex
            grid-template-columns: repeat(auto-fit, 1fr)
            /*grid-template-areas: "work1 work2 work3"*/
            grid-template-rows: 200px
            align-items: center
            padding: 30px
            position: relative
            transition: all .3s ease-in-out
            .item
                position: relative
                width: 300px
                height: 145px
                -moz-transform: skewX(0deg) skewY(-10deg)
                -o-transform: skewX(0deg) skewY(-10deg)
                -webkit-transform: skewX(0deg) skewY(-10deg)
                transform: skewX(0deg) skewY(-10deg)
                img
                    position: relative
                    width: 300px
                    height: 145px
                    background-position: 50% 50%
                    background-size: cover
                    background-repeat: no-repeat
                    border: 0
                    border-radius: 5px
                    box-shadow: 0 0 30px $accent
                .date
                    position: absolute
                    bottom: 0px
                    left: 15px
                    background-color: rgba(234, 213, 123, 0.6)
                    padding: 5px 10px
                    border-radius: 5px
                    transition: all .6s ease-in-out
                &:hover
                    cursor: pointer
                    -moz-transform: scale(1.1) skewX(0deg) skewY(-10deg)
                    -o-transform: scale(1.1) skewX(0deg) skewY(-10deg)
                    -webkit-transform: scale(1.1) skewX(0deg) skewY(-10deg)
                    transform: scale(1.1) skewX(0deg) skewY(-10deg)
                    transition: all .3s ease-in-out
                    .date
                        -moz-transform: scale(1.8) skewX(0deg) skewY(0deg) translate(50px, -16px)
                        -o-transform: scale(1.8) skewX(0deg) skewY(0deg) translate(50px, -16px)
                        -webkit-transform: scale(1.8) skewX(0deg) skewY(0deg) translate(50px, -16px)
                        transform: scale(1.8) skewX(0deg) skewY(0deg) translate(50px, -16px)

    .desc
        font-size: 1.2em
        color: $accent
        min-height: 50px
        height: auto
        position: relative
        margin: 70px 0 20px 0
</style>
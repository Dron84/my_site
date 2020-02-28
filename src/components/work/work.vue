<template>
    <div>
        <div class="container">
            <h1 class="accent">Свежие работы</h1>
            <div class="beginer"></div>
        </div>
        <div class="container">
            <h3 style="text-align: center">В процессе обработки добавления</h3>
        </div>
        <div class="new_galery_wrapper">
            <div class="work_box">
                <div class="info">
                    <div class="img"></div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import spiner from '@/components/page_components/spiner'
    export default {
        name: "oldwork",
        components:{spiner},
        data() {
            return {

            }
        }
    }
</script>

<style scoped lang="sass">
    @import "../sass/vars"
    .new_galery_wrapper
        width: 100%
        height: 300px
        position: relative
        display: flex
        padding: 100px
        .work_box
            width: 150px
            height: 150px
            position: relative
            background-color: $accent
            transform: rotateZ(45deg)
            padding: 20px
            display: block
            z-index: 100
            transition: all .3s ease-in-out
            .info
                width: 148px
                height: 148px
                position: relative
                background-color: white
                z-index: -1
                overflow: hidden
                .img
                    position: relative
                    background-image: url('/works/comformo/login.png')
                    background-position: top
                    background-size: cover
                    top: -30px
                    right: 30px
                    width: 200px
                    height: 200px
                    transform: rotateZ(-45deg)
            &:hover
                .info
                    transform: scale(1.1)



</style>
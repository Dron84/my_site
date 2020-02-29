<template>
    <header class="header">
        <navmenu></navmenu>
        <div class="container">
            <h1 class="accentnormal title titleTag">Создаем<span class="accent"> уникальные сайты </span><br>доступные каждому</h1>
            <p class="accentnormal">Я занимаюсь разработкой интернет-проектов любой сложности <br>и оказываю помощь в Web среде</p>
            <!--<input type="email" class="inputonblack" placeholder="Ваш E-mail" id='email1'>-->
            <!--<button class="button" id='emailsend1'>Отправить запрос</button><span id='emailerror1'></span>-->
            <mouseScroll></mouseScroll>
        </div>
        <div class="angels">
            <div class="angel"></div>
            <div class="angel_accent"></div>
            <div class="angel_white"></div>
        </div>
    </header>
</template>

<script>
    import mouseScroll from '@/components/page_components/mouseScroll'
    import navmenu from '@/components/page_components/menus'
    export default {
        name: "head",
        components: {mouseScroll,navmenu},
        data(){
            return{

            }
        }
    }
</script>

<style scoped lang="sass">
    @import "sass/vars"
    .header
        position: relative
        width: 100%
        height: 100vh
        background-color: rgba(0,0,0,0.7)
        &:before
            content: ''
            position: fixed
            display: block
            top: 0
            left: 0
            width: 100vw
            height: 100vh
            background-image: url('/img/header_bg.jpg')
            background-position: center
            background-size: cover
            z-index: -1
        .container
            height: 90vh
            display: grid
            justify-content: center
            align-items: center
            p
                font-size: 21px
                text-align: center
</style>
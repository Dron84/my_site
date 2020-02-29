<template>
    <div class="container600" style="">
        <p>Оставьте заявку на ваш <span class="accent">уникальный сайт</span></p>
        <div class="gridbox">
            <input type="email" class="input" placeholder="Ваш E-mail">
            <button class="buttononwite">Отправить запрос</button>
        </div>

        <span class="msg" v-if="msg">{{msg}}</span>
        <span class="err" v-if="err">{{err}}</span>
    </div>
</template>

<script>
    export default {
        name: "neworder",
        components:{},
        data(){
            return{
                msg: '',
                err: '',
            }
        }
    }
</script>

<style scoped lang="sass">
    @import "sass/vars"
    @import "sass/fonts"
    .input
        border: 1px solid $accent
        border-radius: 5px
        background-color: transparent
        height: 35px
        padding: 0 5px
        color: $accent
        font-size: 18px
        font-family: 'ProximaLight'
        width: 98%
        z-index: 1000
        outline: none
        &::placeholder
            color: $accent
            font-size: 18px
            font-family: 'ProximaLight'
    .buttononwite
        border: 1px solid $accent
        padding: 0 5px
        border-radius: 5px
        background-color: $accent
        color: $accentnormal
        font-size: 18px
        font-family: 'ProximaLight'
        height: 37px
        width: 100%
        z-index: 1000
        cursor: pointer
        &:hover
            background-color: transparent
            border: 1px solid $accent
            color: $accent
            font-family: 'ProximaBold'
</style>
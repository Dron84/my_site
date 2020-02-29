<template>
    <nav class="menu" :class="{'show': menuShow}">
        <a class="logo">unique<span>site</span></a>
        <div class="burger" @click="menuShow =!menuShow" :class="{'show': menuShow}">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <menu :class="{'show': menuShow}" @click="menuShow = false">
            <a href="#aboutself" class="links" >Обо мне</a>
            <a href="#oldwork" class="links" >Мои работы</a>
            <a href="#review" class="links" >Отзывы</a>
            <a href="#price" class="links" >Цены</a>
            <a href="#contacts" class="links" >Контакты</a>
            <a href="tel:+79995896082"  class="links">+7-999-589-60-82</a>
        </menu>
    </nav>
</template>

<script>
    export default {
        name: "menu",
        data(){
            return{
                menuShow: false,
            }
        }
    }
</script>

<style scoped lang="sass">
    @import "../sass/vars"
    @import "../sass/fonts"
    nav.menu
        height: 53px
        width: 100%
        left: auto
        right: auto
        display: grid
        border-bottom: 1px solid white
        /*position: fixed*/
        /*z-index: 100000*/
        .logo
            color: $accent
            grid-area: logo
            display: block
            cursor: pointer
            height: 30px
            padding-top: 20px
            min-width: 150px
            float: left
            text-transform: uppercase
            span
                color: $accentnormal
            &:hover
                color: $accentnormal
                span
                    color: $accent
                &:before
                    background: $accent
                &:after
                    border-color: $accent
        menu
            grid-area: menu
            .links
                font-family: 'ProximaLight' !important
                display: block
                cursor: pointer
                font-size: 16px
                color: $accentnormal
                height: 30px
                padding-top: 24px
                min-width: 120px
                float: left
                text-transform: none
                text-align: center
                &:hover
                    // background-color: rgba(100,174,249,0.2)
                    height: 29px
                    color: $accent
                    border-bottom: 1px solid $accent
            .menuclick
                height: 100% !important
                background-color: rgba(100,174,249,0.7)!important
                text-shadow: 1px 1px 1px black !important
        .burger
            grid-area: burger
            width: 40px
            height: 40px
            position: relative
            right: 15px
            top: 5px
            margin: 0
            span
                position: relative
                width: 40px
                height: 4px
                display: block
                background-color: $accent
                margin: 7px 0
    @media (min-width: 1030px)
        .menu
            width: 1030px
            grid-template-columns: 1fr 9fr 40px
            grid-template-areas: 'logo menu burger'
            .burger
                display: none
            menu
                display: flex
                &.show
                    display: flex
    @media (max-width: 1029px)
        .menu
            grid-template-columns: 1fr 40px
            grid-template-rows: 53px 1fr
            grid-template-areas: 'logo burger' 'menu menu'
            position: fixed
            width: 100%
            top: 0
            left: 0
            height: 30px
            z-index: 999
            &.show
                background: rgba($accent,.9)
                .logo
                    color: rgba($accentnormal,.6)
                    span
                        color: $accentnormal
                .burger
                    span:nth-child(1)
                        transform: rotateZ(45deg) translate(7px, 7px)
                    span
                        background-color: white
                    span:nth-child(2)
                        transform: rotateZ(360deg)
                        opacity: 0
                    span:nth-child(3)
                        transform: rotateZ(-45deg) translate(8px, -8px)
            .burger
                display: block
                span
                    transition: all .3s ease-in-out
            menu
                display: none
                background: rgba($accent,.9)
                height: 100vh
                .links
                    align-self: center
                    &:hover
                        background: rgba($accentnormal,.9)
                &.show
                    display: grid

</style>
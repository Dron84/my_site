<template>
    <nav class="menu">
        <a class="logo">unique<span>site</span></a>
        <a href="#aboutself" class="links" >Обо мне</a>
        <a href="#oldwork" class="links" >Мои работы</a>
        <a href="#review" class="links" >Отзывы</a>
        <a href="#price" class="links" >Цены</a>
        <a href="#contacts" class="links" >Контакты</a>
        <a href="tel:+79995896082"  class="links">+7-999-589-60-82</a>
    </nav>
</template>

<script>
    export default {
        name: "menu"
    }
</script>

<style scoped lang="sass">
    @import "../sass/vars"
    @import "../sass/fonts"
    .logo
        color: $accent
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
            border-bottom: 1px solid $accent
            color: $accentnormal
            span
                color: $accent
            &:before
                background: $accent
            &:after
                border-color: $accent
    .menu
        height: 50px
        margin:
            left: auto
            right: auto
    .menuclick
        height: 100% !important
        background-color: rgba(100,174,249,0.7)!important
        text-shadow: 1px 1px 1px black !important
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
        &:hover
            // background-color: rgba(100,174,249,0.2)
            height: 29px
            color: $accent
            border:
                bottom: 1px solid $accent
</style>
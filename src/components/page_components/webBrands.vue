<template>
    <div class="web">
        <img src="/img/brands/HTML5.png" alt="HTML5">
        <img src="/img/brands/sass.svg" alt="sass">
        <img src="/img/brands/JavaScript.png" alt="JavaScript">
        <img src="/img/brands/vuejs.svg" alt="vuejs">
        <img src="/img/brands/mongodb.svg" alt="mongodb">
        <img src="/img/brands/nodejs.svg" alt="nodejs">
        <img src="/img/brands/Mysql.png" alt="Mysql">
        <img src="/img/brands/PHP.png" alt="PHP">
        <img src="/img/brands/AJAX.png" alt="AJAX">
        <img src="/img/brands/Boostrap.png" alt="Boostrap">
        <img src="/img/brands/Postgresql.png" alt="Postgresql">
        <img src="/img/brands/JQuery.png" alt="JQuery">
    </div>
</template>

<script>
    export default {
        name: "webBrands"
    }
</script>

<style scoped lang="sass">
    .web
        display: grid
        grid-template-columns: repeat(auto-fill,minmax(100px,1fr))
        grid-template-rows: repeat(auto-fill,minmax(100px,1fr))
        justify-content: center
        align-items: center
        img
            display: inline-flex
            justify-self: center
            width: 70px
            height: auto
            -webkit-filter: grayscale(100%)
            filter: grayscale(100%)
            cursor: pointer
            &:hover
                -webkit-filter: grayscale(0%)
                filter: grayscale(0%)
    @media (max-width: 600px)
        .web
            display: grid
            grid-template-columns: 1fr 1fr
            grid-template-areas: "item1 item2" "item3 item4" "item5 item6" "item7 item8"
            grid-template-rows: 70px 70px 70px 70px
</style>
<template>
    <div>
        <div class="container">
            <h1 class="accent">Свежие работы</h1>
            <div class="beginer"></div>
        </div>
        <div class="container">

        </div>
        <div class="container600">
            <spiner imgArray=""></spiner>
        </div>
        <div class="loadwork">
            <div id="con"></div>
            <div class="exit">X</div>
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

<style scoped>

</style>
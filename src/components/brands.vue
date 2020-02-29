<template>
    <section class="white_bg">
        <div class="container600">
            <div class="beginer"></div>
            <h2 style="text-align: center">CMS которые я использую</h2>
            <p>В работе я использую самые новые технологии создания Web-приложений и сайтов. Это лучше, чем одностраничник из готовых блоков. Также работаю с разлычными CMS. </p>
            <webBrandsCMS></webBrandsCMS>
        </div>
    </section>
</template>

<script>
    import webBrandsCMS from '@/components/page_components/webBrandsCMS'
    export default {
        name: "brands",
        components:{webBrandsCMS},
    }
</script>

<style scoped>

</style>
<template>
    <section id='aboutself'>
        <h1 class="accent">Обо мне</h1>
        <div class="beginer"></div>
        <div class="container600">
            <center><div class="imgrounded avatar"></div></center>
            <p>Привет, меня зовут Андрей. Каждый день я создаю уникальные сайты для бизнеса. Сам пишу коды, разрабатываю концепцию и продумываю структуру. С удовольствием помогу вам с помощью сайта увеличить количество ваших клиентов и увеличим количество продаж </p>
            <p>По абсолютно любому дизайну. С любыми шрифтами, размерами и окраской элементов.</p>
            <p>Берусь за абсолютно любой дизайн: от минимализма до сложных проектов. Сделаю сайт «как на картинке» или вместе придумаем для вас что-то индивидуальное.<br>Владею различными языками программирования:</p>

            <webBrands></webBrands>
            <div class="beginer"></div>
            <p>В работе я использую самые новые технологии создания Web-приложений и сайтов. Это лучше, чем одностраничник из готовых блоков. Также работаю с разлычными CMS. </p>
            <webBrandsCMS></webBrandsCMS>
        </div>
    </section>
</template>

<script>
    import webBrands from '@/components/page_components/webBrands'
    import webBrandsCMS from '@/components/page_components/webBrandsCMS'
    export default {
        name: "aboutself",
        components:{webBrands,webBrandsCMS},
        data(){
            return{}
        }
    }
</script>

<style scoped>

</style>
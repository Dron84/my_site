<template>
    <section id='aboutself'>
        <h1 class="accent">Обо мне</h1>
        <div class="beginer"></div>
        <div class="container600">
            <center><div class="imgrounded avatar"></div></center>
            <p>Привет, меня зовут Андрей. Каждый день я создаю уникальные сайты для бизнеса и не только. Сам пишу тонны кода, разрабатываю концепцию и продумываю структуру. С удовольствием создам вам сайт, увеличу количество ваших клиентов а также количество продаж </p>
            <p>По абсолютно любому дизайну. С любыми шрифтами, размерами и окраской элементов и анимацией. </p>
            <p>Берусь за абсолютно любой дизайн: от минимализма до сложных проектов. Сделаю сайт «как на картинке» или вместе придумаем для вас что-то индивидуальное.<br>Владею различными технологиями:</p>
            <h2 style="text-align: center; margin: 20px;">Стек который я использую</h2>
            <webBrands></webBrands>
        </div>
    </section>
</template>

<script>
    import webBrands from '@/components/page_components/webBrands'
    export default {
        name: "aboutself",
        components:{webBrands},
        data(){
            return{}
        }
    }
</script>

<style scoped>

</style>
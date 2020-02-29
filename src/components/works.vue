<template>
    <section id="work">
        <div class="container600">
            <center>
                <p>Я занимаюсь созданием и <span class="accent" title="это сбор информации и сохранение его в удобочитаемом и переиспользуемом формате">парсингом (скрапингом)</span> сайтов по разным направлениям: красота, технологии, кулинария, бухгалтерия, спорт и многое другое. </p>
                <p>Посмотрите несколько моих работ.</p>
            </center>
        </div>
        <newwork></newwork>
        <neworder></neworder>
    </section>
</template>

<script>
    import newwork from '@/components/work/work'
    import neworder from '@/components/neworder'
    export default {
        name: "works",
        components:{newwork,neworder},
    }
</script>

<style scoped>

</style>
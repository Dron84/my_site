<template>
    <section id="work">
        <div class="container600">
            <center>
                <p>Я занимаюсь созданием сайтов по разным направлениям: красота, технологии, кулинария, бухгалтерия и другое. </p><p>Посмотрите несколько моих самых любимых работ.</p>
            </center>
        </div>
        <newwork></newwork>
        <oldwork></oldwork>
        <neworder></neworder>
    </section>
</template>

<script>
    import oldwork from '@/components/work/oldwork'
    import newwork from '@/components/work/work'
    import neworder from '@/components/neworder'
    export default {
        name: "works",
        components:{oldwork,newwork,neworder},
    }
</script>

<style scoped>

</style>
<template>
    <div>
        <HeadersComponent></HeadersComponent>
        <aboutself></aboutself>
        <brands></brands>
        <support></support>
        <works></works>
        <!--<review></review>-->
        <price></price>
        <contacts></contacts>
        <foot></foot>
    </div>
</template>

<script>
    import HeadersComponent from '@/components/head'
    import aboutself from '@/components/aboutself'
    import brands from '@/components/brands'
    import support from '@/components/support'
    import works from '@/components/works'
    import review from '@/components/review'
    import price from '@/components/price'
    import contacts from '@/components/contacts'
    import foot from '@/components/foot'

    export default {
        name: "DefaultLayout",
        components:{HeadersComponent,aboutself,brands,support,works,review,price,contacts,foot}
    }
</script>

<style scoped>

</style>
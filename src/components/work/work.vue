<template>
    <div>
        <div class="container">
            <h1 class="accent">Работы</h1>
            <div class="beginer"></div>
        </div>
        <div class="container">
            <div class="new_galery_wrapper">
                <div class="work_item box_shadow" :style="`background-image: url(${item.img})`" v-for="(item,index) in works" :key="index">
                    <h3>{{item.h3}}</h3>
                    <div class="stack">
                        <span class="stack_item" v-for="(tag,ind) in item.stack.split(',')" :key="ind">{{tag}}</span>
                    </div>
                    <a class="link" :href="item.a" target="_blank" rel="nofollow" v-if="item.a!==''">на сайт</a>
                    <span class="date">{{item.date}}</span>
                </div>
            </div>
            <center><br><br><p class="accent">Некоторые сайты могут уже быть не доступны</p></center>
        </div>
    </div>
</template>

<script>
    import stack from '@/components/page_components/stack'
    export default {
        name: "work",
        components:{stack},
        data() {
            return {
                works:[
                    {
                        img: '/works/todo/th.jpg',
                        a: "",
                        h3: "Создать ToDo",
                        review: "",
                        date: "02/2020",
                        description: "Создание ТОДУ с возможностию добавить подзадачу и возможностью редактирования. Добавления действий в историю изменений и возможность их вернуть и отменить возврат",
                        stack: 'HTML,NodeJS,JS,Vue,Vuex,SASS,MongoDB,Docker,Docker-compose,Git',
                        git_link: 'https://github.com/Dron84/todo'
                    },
                    {
                        img: '/works/nadirparser/th.jpg',
                        a: "//45.8.230.229",
                        h3: "Кабинет для частного лица\n по парсингу спортивных сайтов",
                        review: "",
                        date: "с 01/2020 по 02/2020",
                        description: "Изначально парень попросил спарсить один сайт под названием Soccerway. Но вошел в кураж и на данный момент его программа парсит уже более 10 сайтов и собирает спортивные данные.",
                        stack: 'HTML,NodeJS,JS,Vue,Vuex,VuePaperDashboard,SASS,MongoDB,Docker,Docker-compose,Git,VPS server'
                    },
                    {
                        img: "/works/weatherapp/th.jpg",
                        a: "",
                        h3: "Программа для погоды",
                        p: "",
                        date: "12.2019",
                        description: "Интернет магазин созданный по заказу предпринимателя с системой управдения сайтом. Была использована сетка bootstrap, как следствие сайт можно использовать на мобильном устройстве. Но в связи с отсутствием интереса соучредителей компании, сайт отключен",
                        stack: 'HTML,SASS,Vue,OpenWeatherAPI,Laravel,Git',
                        git_link: 'https://github.com/Dron84/WetherAppWithOutServer'
                    },
                    {
                        img: '/works/agamvoice/th.jpg',
                        a: "//agamvoice.com",
                        h3: "Израильская певица",
                        review: "",
                        date: "11/2019",
                        description: "Ко мне обратилась девушка и попросила перенести ее сайт с Tilda на Wordpress. Сайт переехал с Tilda на Wordpress за пару дней",
                        stack: 'Wordpress'
                    },
                    {
                        img: '/works/siapp/th.jpg',
                        a: "//siapp.me",
                        h3: "Израильскаий сайт\nсоциальных работ",
                        review: "",
                        date: "с 10/2019 по 11/2019",
                        description: "Это маленький проект для государственных служб Израиля, но с большим потонциалом так как планируется что он станет основой быстрых работ в Израиле и в будущим у него будет приложение",
                        stack: 'HTML,JS,Vue,Vuex,SASS,Git'
                    },
                    {
                        img: '/works/comformo/th.jpg',
                        a: "//my.comformo.com",
                        h3: "Кабинет для компании\nComformo LTD",
                        review: "",
                        date: "с 01/2019 по 10/2019",
                        description: "Это был огромный проект по контракту с компанией Comformo LTD клиентскую часть проекта переделывали 5 раз окончательный был на Vue, доделывали функционал на PHP и MySQL.",
                        stack: 'HTML,SASS,PHP,MySQL,JS,Vue,Vuex,Git'
                    },
                    {
                        img: '/works/vvssll/th.jpg',
                        a: "//vvssll.com/",
                        h3: "Кабинет для комании\nVVSSLL LTD",
                        review: "",
                        date: "с 09/2018 по 12/2018",
                        description: "Этот проект должен был стать сайтом по открытию компании в европе не отходя от монитора но проект был заброшен и перешли к Comformo",
                        stack: 'HTML,SASS,JS,PHP,MySQL,Git'
                    },
                    {
                        img: '/works/oficial23/th.jpg',
                        a: "//oficial23.ru/",
                        h3: "Сайт агентсво недвижимости\nОфициалЪ",
                        review: "",
                        date: "08/2019",
                        description: "Это агентство недвижимости и юридических услуг с каталогом",
                        stack: 'HTML,PHP,MySQL,JS,Vue,Vuex,SASS,Git'
                    },
                    {
                        img: "/works/fengshui-consultant/th.jpg",
                        a: "//fengshui-consultant.ru",
                        h3: "Феншуй для каждого",
                        p: "",
                        date: "02.2018",
                        description: "Этот частны сайт занимающийся консультациями по феншуй, на сайте планируется специально разработанные приложение для работы клиентов сайта. Сайт также написан вручную без CMS (системы управления контентом)",
                        stack: 'HTML,SASS,AJAX,JQuery,PHP,MySQL,Git'
                    },
                    {
                        img: "/works/aliance/th.jpg",
                        a: "//aliance.company",
                        h3: "ООО Альянс",
                        p: "В лице директора компании ООО 'Альянс', выражаю свою благодарность за качественную, добросовестную работу.",
                        date: "11.2017",
                        description: "Сайт разработан по технологии mobile first (В первую очередь для мобильных устройств), написан в ручную без twitter bootstrap и без сторонних CMS (системы управления контентом). Данные по фирмам генерирует запрос из MySQL БД и подгружается по технологии AJAX с использованием JQuery.",
                        stack: 'HTML,SASS,AJAX,JQuery,PHP,MySQL'
                    },
                    {
                        img: "/works/intech/th.jpg",
                        a: "//ooointech.ru",
                        h3: "ООО Инновационные технологии",
                        p: "В лице директора компании ООО 'Инновационные технологии', выражаю свою благодарность за быструю, качественную, красивую добросовестную работу, выполненную в нужный срок.",
                        date: "02.2017",
                        description: "Этот корпоративный сайт компании занимающиеся запчастям на крановую и грузоподъемную технику. Для интернета доступна часть только информационная, но на сайте есть специально спроектированное приложение по работе с клиентами компании, а также приложения работы с почтой. Сайт также написан вручную без CMS (системы управления контентом)",
                        stack: 'HTML,SASS,JS,PHP,MySQL'
                    },
                    {
                        img: "/works/trisestri/th.jpg",
                        a: "//trisestri.ru",
                        h3: "Магазин тканей 'Три Сестры'",
                        p: "Все четко качественно и без задержек",
                        date: "01.2017",
                        description: "Интернет магазин созданный по заказу предпринимателя с системой управдения сайтом. Была использована сетка bootstrap, как следствие сайт можно использовать на мобильном устройстве. Но в связи с отсутствием интереса соучредителей компании, сайт отключен",
                        stack: 'HTML,SASS,AJAX,JS,PHP,MySQL'
                    },
                    {
                        img: "/works/taran/th.jpg",
                        a: "//taran.com",
                        h3: "ИП Таран",
                        p: "Выражаю свою благодарность за качественную и добросовестную работу, выполненную в короткие сроки. с Вами приятно работать.",
                        date: "07.2016",
                        description: "Информационный сайт о деятельности предпринимателя созданный на платформе WIX поддерживаемый мной. В данный момент в связи с закрытием данного бизнеса сайт отключен",
                        stack: 'WiX'
                    },
                    {
                        img: "/works/jobcam/th.jpg",
                        a: "//jobcam.online",
                        h3: "JobCam.online",
                        p: "Быстро, анонимно, дешево и в срок",
                        date: "04.2016",
                        description: "Дизайнерский landing page (посадочная страница) или как принято сейчас называть лендинг, также созданны почтовые сообщения формата HTML. Создан для привлечения рабочей силы в штат компании. Сайт статичный и не адаптивный",
                        stack: 'HTML,SASS,JS,PHP,MySQL'
                    },
                    {
                        img: "/works/pktpk/th.jpg",
                        a: "",
                        h3: "ПК ТПК(Технологии Потребительских Коопераций)",
                        p: "Позетивно, очень быстро и практически даром",
                        date: "02.2016",
                        description: "Этот лендинг я сделал по крайне срочному заказу за 30 минут с поиском картинок и согласованием с заказчиком цветов, шрифтов и созданием логотипа",
                        stack: 'HTML,SASS,AJAX,JQuery,PHP,MySQL'
                    }
                ],
            }
        },
        methods:{

        }
    }
</script>

<style scoped lang="sass">
    @import "../sass/vars"
    .new_galery_wrapper
        width: 97%
        height: auto
        position: relative
        display: grid
        grid-template-columns: repeat(auto-fill, minmax(290px,1fr))
        grid-gap: 20px
        margin-left: 20px
        .work_item
            width: 290px
            height: 200px
            position: relative
            border-radius: 5px
            border: 1px solid $accent
            display: block
            transition: all .3s ease-in-out
            box-sizing: content-box
            background-position: center
            background-size: cover
            transition: all .3s ease-in-out
            &:hover
                transform: scale(1.05)
                cursor: pointer
                &::after
                    content: ''
                    position: absolute
                    top: 0
                    left: 0
                    width: 100%
                    height: 100%
                    background-color: rgba(black,.7)
                    z-index: -1
                h3
                    color: $accent
                    opacity: 1
                .date
                    cursor: pointer
                    -moz-transform: scale(1.1)
                    -o-transform: scale(1.1)
                    -webkit-transform: scale(1.1)
                    transform: scale(1.1)
                    opacity: 1
                .stack,.link
                    opacity: 1
            .link
                position: absolute
                bottom: 30px
                right: 20px
                border-radius: 5px
                border: 2px solid $accent
                background-color: transparent
                color: $accent
                opacity: 0
                padding: 2px 15px
                &:hover
                    border: 2px solid $accentnormal
                    color: $accentnormal
            h3,span.date
                width: 100%
                text-align: center
                margin-top: 10px
                opacity: 0
            .date
                position: absolute
                bottom: 0
                display: inline-block
                background-color: rgba($accent, 0.6)
                border-radius: 5px
                transition: all .6s ease-in-out
                color: $accentnormal
            .stack
                display: flex
                flex-wrap: wrap
                list-style: none
                opacity: 0
                &_item
                    padding: 3px 5px
                    display: inline-block
                    border-radius: 5px
                    margin: 5px
                    background-color: rgba($accent,.5)
                    color: rgba($accentnormal,.5)

</style>
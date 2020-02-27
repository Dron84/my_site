<template>
    <section id='price'>
        <div class="container">
            <center>
                <h1 class="accent" style="margin-top: 30px;">Прейскурант</h1>
                <div class="beginer"></div>
                <p>Крупные проекты обсуждаются индивидуально</p>
            </center>
            <div class="container600">
                <div class="table">
                    <div class="theader">Верстка</div>
                    <div class="tcontents">
                        <div class="tcontent">Верстка 1 стр</div>
                        <div class="tprice">от 500р.</div>
                        <div class="tcontent">Верстка сайта под ключ</div>
                        <div class="tprice">от 5000р.</div>
                    </div>
                    <div class="theader" id="techsupport">Техническая поддержка</div>
                    <div class="tcontents">
                        <div class="tcontent">Администрирование сайта</div>
                        <div class="tprice">от 3 000 руб./мес</div>
                        <div class="tcontent">Добавление новостей или редактирование 1 стр</div>
                        <div class="tprice">от 300р.</div>
                    </div>
                    <div class="theader">Разработка (без дизайна)</div>
                    <div class="tcontents">
                        <div class="tcontent">Сайт визитка</div>
                        <div class="tprice">от 5 000 руб.</div>
                        <div class="tcontent">Сайт landing Page (посадочная страница)</div>
                        <div class="tprice">от 5 000 руб.</div>
                    </div>
                    <div class="theader">Разработка под ключ</div>
                    <div class="tcontents">
                        <div class="tcontent">Уникальный сайт</div>
                        <div class="tprice">от 20 000 руб.</div>
                        <div class="tcontent">Сайт на CMS</div>
                        <div class="tprice">от 10 000 руб.</div>
                        <div class="tcontent">landing Page</div>
                        <div class="tprice">от 10 000 руб.</div>
                        <div class="tcontent">Сайт визитка</div>
                        <div class="tprice">от 10 000 руб.</div>
                    </div>
                    <div class="theader">Разработка корпоративных сайтов</div>
                    <div class="tcontents">
                        <div class="tcontent">Уникальный корпоративный сайт</div>
                        <div class="tprice">от 70 000 руб./месяц</div>
                    </div>
                    <div class="theader">Разработка Админ панелей для сайтов</div>
                    <div class="tcontents">
                        <div class="tcontent">Уникальный Админ панель</div>
                        <div class="tprice">от техического задания</div>
                    </div>
                </div>
            </div>
            <div class="container600">
                <center>
                    <p>Оставьте заявку на разработку вашего <span class="accent">уникального сайта</span></p>
                    <input type="email" class="input" placeholder="Ваш E-mail" id='email3'>
                    <button class="buttononwite" id='emailsend3'>Отправить запрос</button><span id='emailerror3'></span>
                </center>
            </div>
        </div>
    </section>
</template>

<script>
    export default {
        name: "price"
    }
</script>

<style scoped>

</style>
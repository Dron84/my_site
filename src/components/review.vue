<template>
    <section id='review'>
        <div class="container">
            <center>
                <h1 class="accent">Отзывы</h1>
                <div class="beginer"></div>
                <p>Реальные компании и реальные люди</p>
                <br><br>
                <p class="accent">Некоторые сайты могут уже быть не доступны</p>
            </center>
            <div class="spiner">
                <div class="spiner_left" id="rewiew_l">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="121px">
                        <path fill-rule="evenodd"  fill="rgb(100, 174, 249)" d="M24.004,0.351 L3.292,60.898 L3.282,60.897 L23.308,120.648 L20.375,120.999 L-0.004,60.193 L0.452,60.138 L21.024,0.000 L24.004,0.351 Z"/>
                    </svg>
                </div>
                <div class="rew">
                    <div class="rew1">
                        <center>
                            <div class="img"></div>
                            <a href="#" dataevent="true" target="_blank"><h3></h3></a>
                            <p class="accent"></p>
                            <div class="data"></div>
                        </center>
                    </div>
                    <div class="rew2">
                        <center>
                            <div class="img"></div>
                            <a href="#" dataevent="true" target="_blank"><h3></h3></a>
                            <p class="accent"></p>
                            <div class="data"></div>
                        </center>
                    </div>
                    <div class="rew3">
                        <center>
                            <div class="img"></div>
                            <a href="#" dataevent="true" target="_blank"><h3></h3></a>
                            <p class="accent"></p>
                            <div class="data"></div>
                        </center>
                    </div>
                </div>
                <div class="spiner_right" id="rewiew_r">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="121px">
                        <path fill-rule="evenodd"  fill="rgb(100, 174, 249)" d="M24.004,60.193 L3.625,120.999 L0.692,120.648 L20.718,60.897 L20.707,60.898 L-0.004,0.351 L2.976,0.000 L23.548,60.138 L24.004,60.193 Z"/>
                    </svg>
                </div>

            </div>
        </div>

    </section>
</template>

<script>
    export default {
        name: "review",
        data(){
            return{
                rew: ["/static/works/intech/",
                    "/static/works/jobcam/",
                    "/static/works/pktpk/",
                    "/static/works/taran/",
                    "/static/works/trisestri/",
                    "/static/works/aliance/",
                    "/static/works/fengshui-consultant/"]
            }
        }
    }
</script>

<style scoped>

</style>
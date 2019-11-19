import { InertiaApp } from '@inertiajs/inertia-vue'
import Vue from "vue";

Vue.use(InertiaApp)

const app = document.getElementById("app");

new Vue({
    render: h =>
        h(InertiaApp, {
            props: {
                initialPage: JSON.parse(app.dataset.page),
                resolveComponent: name => {
                    return import(/* webpackChunkName: "includes/js/app" */ `@/Pages/${name}`).then(
                        module => module.default
                    );
                }
            }
        })
}).$mount(app);

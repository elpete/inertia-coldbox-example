import Inertia from "inertia-vue";
import Vue from "vue";

const appEl = document.getElementById("app");

const app = new Vue({
    render: h =>
        h(Inertia, {
            props: {
                component: appEl.dataset.component,
                props: JSON.parse(appEl.dataset.props),
                resolveComponent: component => {
                    return import(/* webpackChunkName: "includes/js/app" */ `@/Pages/${component}`).then(
                        module => module.default
                    );
                }
            }
        })
}).$mount(appEl);

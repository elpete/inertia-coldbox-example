<template>
    <main>
        <header>
            <inertia-link href="/">Home</inertia-link>
            <inertia-link href="/one">One</inertia-link>
            <inertia-link href="/two">Two</inertia-link>
            <inertia-link href="/error">Error</inertia-link>
        </header>
        <article>
            <slot/>
        </article>
    </main>
</template>

<script>
import { InertiaLink } from "inertia-vue";

export default {
    props: {
        title: {
            type: String,
            default: "ColdBox Inertia"
        }
    },
    components: {
        InertiaLink
    },
    watch: {
        title(newTitle) {
            this.updatePageTitle(newTitle);
        }
    },
    mounted() {
        this.updatePageTitle(this.title);
    },
    methods: {
        updatePageTitle(title) {
            document.title = title;
        }
    }
};
</script>

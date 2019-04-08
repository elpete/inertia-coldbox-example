<template>
    <layout title="ColdBox Inertia">
        <h1>Welcome to ColdBox Inertia!</h1>
        <p>{{ greeting }}</p>
    </layout>
</template>

<script>
import Layout from "@/Shared/Layout";

export default {
    components: {
        Layout
    },
    props: {
        greeting: {
            required: true,
            type: String
        }
    }
};
</script>

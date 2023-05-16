<template>
  <cv-header class="header" aria-label="Carbon header">
    <cv-header-name v-if="!portugues" href="javascript:void(0)">
      Leonardo Neves Resume 
    </cv-header-name>
    <cv-header-name v-else href="javascript:void(0)">
      Leonardo Neves CV 
    </cv-header-name>
    <span style="cursor: pointer;">
      <img v-if="!portugues"
        @click="language"
        style="border-radius: 3px; max-height: 10px;"
        src="../assets/brazilFlagS.png"
        alt="portuguese selection" />
      <img v-if="portugues"
        @click="language"
        style="border-radius: 3px; max-height: 10px;"
        src="../assets/britishFlagS.png"
        alt="english selection" />
    </span>
    <a class="link-blog" href="https://leon-neves-myblog.mybluemix.net/">Visitar Meu Blog ツ</a>
  </cv-header>
</template>

<script>
// import cv-header from '../node_modules/@carbon/vue/src/components/cv-ui-shell/cv-header-global-action-vue'
export default {
  name: "Header",
  data() {
    return {
      portugues: false
    }
  },
  methods: {
    language() {
      this.portugues = !this.portugues
      this.$emit('portuguese', this.portugues)
    }
  }
};
</script>
<style>
  .header {
    display: flex;
    justify-content: space-between;
    padding: 1rem;
  }

  .link-blog {
    text-decoration: none;
    color: #fff;
    margin-left: 3rem;
  }

  .link-blog:hover {
    text-decoration: none;
    color: #fff;
  }
</style>

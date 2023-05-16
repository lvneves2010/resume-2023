<template>
  <div id="app">
    <transition name="fade" appear>
    <Header @portuguese="changeLanguage"/>
    </transition>
    <transition name="fade1" appear>
    <Presentation :portugues="portugues"/>
    </transition>
    <transition name="fade2" appear>
    <Profile :portugues="portugues" />
    </transition>
    <transition name="fade3" appear>
    <Education :portugues="portugues" />
    </transition>
    <transition name="fade4" appear>
    <Experience :portugues="portugues" />
    </transition>
    <transition name="fade5" appear>
    <button v-if="portugues" @click="portuguesCV">Versão em PDF</button>
    <button v-else @click="inglesCV">PDF Version</button>
    </transition>
  </div>
</template>

<script>
import Header from "~/components/Header.vue";
import Presentation from "~/components/Presentation.vue";
import Profile from "~/components/Profile.vue";
import Education from "~/components/Education.vue";
import Experience from "~/components/Experience.vue";

export default {
  name: "app",
  components: {
    Header,
    Presentation,
    Profile,
    Education,
    Experience
  },
  data() {
    return {
      portugues: false
    }
  },
  methods: {
    inglesCV() {
      window.open('/ResumeIT.pdf','_blank', 'fullscreen=yes');
    },
    portuguesCV() {
      window.open('/CVIT.pdf','_blank', 'fullscreen=yes');
    },
    changeLanguage(p) {
      this.portugues = p
    }
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  $feature-flags: (
    grid-columns-16: true
  );
}


.fade-enter, .fade1-enter, .fade2-enter, .fade3-enter, .fade4-enter, .fade5-enter,
.fade-leave-to, .fade1-leave-to, .fade2-leave-to, .fade3-leave-to, .fade4-leave-to, .fade5-leave-to {
  opacity: 0;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 2s;
}
.fade1-enter-active,
.fade1-leave-active {
  transition: opacity 5s;
}
.fade2-enter-active,
.fade2-leave-active {
  transition: opacity 10s;
}
.fade3-enter-active,
.fade3-leave-active {
  transition: opacity 15s;
}
.fade4-enter-active,
.fade4-leave-active {
  transition: opacity 20s;
}
.fade5-enter-active,
.fade5-leave-active {
  transition: opacity 25s;
}

</style>

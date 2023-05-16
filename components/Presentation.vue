<template>
  <div id="Presentation">
    <div id="side" class="bx--col-md-8">
      <transition name="slide" appear>
      <img
        style="border-radius: 70px; max-height: 150px;"
        src="../assets/profile-pictureN.png"
        alt="profile-picture"
      />
      </transition>
    </div>
    <div id="main">
      <H1 v-if="!portugues">Leonardo Neves - Application Developer</H1>
      <H1 v-else>Leonardo Neves - Desenvolvedor de Aplicações</H1>
      <svg focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" aria-hidden="true" style="will-change: transform;"><path d="M28 6H4a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h24a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2zm-2.2 2L16 14.78 6.2 8zM4 24V8.91l11.43 7.91a1 1 0 0 0 1.14 0L28 8.91V24z"></path></svg>      
      <a href="mailto:lvneves2010@gmail.com">
        lvneves2010@gmail.com
      </a>
      <a href="tel:+5511981161276">
          <svg focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" aria-hidden="true" style="will-change: transform;"><path d="M26 29h-.17C6.18 27.87 3.39 11.29 3 6.23A3 3 0 0 1 5.76 3h5.51a2 2 0 0 1 1.86 1.26L14.65 8a2 2 0 0 1-.44 2.16l-2.13 2.15a9.37 9.37 0 0 0 7.58 7.6l2.17-2.15a2 2 0 0 1 2.17-.41l3.77 1.51A2 2 0 0 1 29 20.72V26a3 3 0 0 1-3 3zM6 5a1 1 0 0 0-1 1v.08C5.46 12 8.41 26 25.94 27a1 1 0 0 0 1.06-.94v-5.34l-3.77-1.51-2.87 2.85-.48-.06c-8.7-1.09-9.88-9.79-9.88-9.88l-.06-.48 2.84-2.87L11.28 5z"></path></svg>
          +55(11)981161276</a>
      <a href="https://www.youracclaim.com/users/leonardo-neves.6260e18d/badges">
        <svg focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" aria-hidden="true" style="will-change: transform;"><path d="M16 2a9 9 0 0 0-6 15.69V30l6-4 6 4V17.69A9 9 0 0 0 16 2zm4 24.26l-2.89-1.92L16 23.6l-1.11.74L12 26.26v-7.21a8.88 8.88 0 0 0 8 0zM20.89 16A7 7 0 1 1 23 11a7 7 0 0 1-2.11 5z"></path></svg>
        Acclaim Badges
      </a>
      <a href="https://www.linkedin.com/in/leonardo-neves-43376512/">
        <svg focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" aria-hidden="true" style="will-change: transform;"><path d="M16 2a9 9 0 0 0-6 15.69V30l6-4 6 4V17.69A9 9 0 0 0 16 2zm4 24.26l-2.89-1.92L16 23.6l-1.11.74L12 26.26v-7.21a8.88 8.88 0 0 0 8 0zM20.89 16A7 7 0 1 1 23 11a7 7 0 0 1-2.11 5z"></path></svg>
        LinkedIn
      </a>
    </div>
  </div>
</template>
<script>
export default {
  name: "Presentation",
  props: {
    portugues: {
      type: Boolean
    }
  }
};
</script>
<style>
#Presentation {
  border-bottom-style: solid;
  border-bottom-color: black;
  border-bottom-width: 0.5px;
  padding-bottom: 15px;
}
#main {
    /* text-align: start; */
    vertical-align: top;
    font-size: 24px;
}

#main a {
  text-decoration: none;
  color: #000;
}

#main a:hover {
  text-decoration: none;
  color: #000;
}


@keyframes slide-in {
  from {
    transform: translateX(-400px);
  }
  to {
    transform: translateX(0px);
  }
}

@keyframes slide-out {
  from {
    transform: translateY(0px);
  }
  to {
    transform: translateY(40px);
  }
}

.slide-enter-active {
  /* animation: slide-in 8s ease; */
  transition: opacity 8s;
}


.slide-enter {
  opacity: 0;
}
</style>

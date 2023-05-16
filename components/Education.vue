<template>
  <div id="Education">
    <h2 v-if="!portugues"
      style="font-size: 2rem;
      font-weight: 400;
      line-height: 2.5rem;
      letter-spacing: 0;
      padding-bottom: 15px;
      text-align: start;"
    >Education</h2>
    <h2 v-if="portugues"
      style="font-size: 2rem;
      font-weight: 400;
      line-height: 2.5rem;
      letter-spacing: 0;
      padding-bottom: 15px;
      text-align: start;"
    >Educação Acadêmica e Capacitação</h2>
    <ul v-if="!portugues">
      <p>Degrees</p>
      <li><p>UNIVESP (UNIVERSIDADE VIRTUAL DO ESTADO DE SÃO PAULO) - Computer engineering – current 2017/2022.</p></li>
      <li><p>UNIP – Bachelor of Business Administration – 2007 / 2010.</p></li>
      <li><p>E.T.E. Horacio Augusto da Silveira – Electronics Technician – completion in 1994.</p></li>
      <br><br>
      <li><p>
        <a class="acclaim-link"
          href="https://www.youracclaim.com/users/leonardo-neves.6260e18d/badges"
        >IBM Acclaim certifications</a>
      </p></li>
    </ul>
    <ul v-else>
      <p>Graduação</p>
      <li><p>UNIVESP (UNIVERSIDADE VIRTUAL DO ESTADO DE SÃO PAULO) – Engenharia da Computação – conclusão em 2022.</p></li>
      <li><p>UNIP – Bacharelado em Administração de Empresas – 2007 / 2010.</p></li>
      <li><p>E.T.E. Horacio Augusto da Silveira – Técnico em Eletrônica – conclusão em 2004.</p></li>
      <br><br>
      <li><p>
        <a class="acclaim-link"
          href="https://www.youracclaim.com/users/leonardo-neves.6260e18d/badges"
        >Certificações IBM</a>
      </p></li>
    </ul>
    <ul>
      <p v-if="!portugues">Certifications</p>
      <p v-else>Certificações</p>
      <li><p>Software Architecture & Design of Modern Large Scale Systems – Udemy (2022).</p></li>
      <li><p>Blockchain and Bitcoin Fundamentals – Udemy - (2021).</p></li>
      <li><p>Vue JS 2 Guia completo – COD3R (2020).</p></li>
      <li><p>Curso de SEO 2020 – Mirago (2020).</p></li>
      <li><p>Nuxt JS – Academind (2020).</p></li>
      <li><p>Python & Django with Visual Studio 2017– Microsoft Virtual Academy (2019).</p></li>
      <li><p>ASP.NET Core 2.0 (Beginner – Intermediate – Advanced) - Microsoft Virtual Academy (2019).</p></li>
      <li><p>ITIL v3 – Fundação Bradesco – (2018).</p></li>
      <li><p>Project management – Veduca – USP – (2018).</p></li>
      <li><p>Team management –FM2S – (2018).</p></li>
      <li><p>SCRUM fundamentals (SFC) – UDEMY (2018).</p></li>
      <li><p>ASP.NET MVC 5 – Microsoft Virtual Academy (2018).</p></li>
      <li><p>Python 3 Complete – UDEMY (2018).</p></li>
      <li><p>Rails 5, Angular6, NativeScript – UDEMY (2018).</p></li>
      <li><p>Databases for Developers – Oracle (2018).</p></li>
      <li><p>Complete Webmaster Front-End –Danki Code (2018).</p></li>
    </ul>
  </div>
</template>
<script>
export default {
  name: "Education",
  props: {
    portugues: {
      type: Boolean
    }
  }
}
</script>
<style>
#Education {
  display: flex;
  justify-content: center;
  margin: 10px;
  padding-top: 15px;
  border-bottom-style: solid;
  border-bottom-color: black;
  border-bottom-width: 0.5px;
  padding-bottom: 15px;
}

.acclaim-link {
  text-decoration: none;
  color: blue
}

.acclaim-link:hover {
  text-decoration: none;
  color: blue
}
@media screen and (max-width: 900px) {
  #Education {
    display: block;
  }
}
.list {
  padding: 25px;
}
</style>
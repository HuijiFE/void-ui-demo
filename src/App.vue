<template>
  <div id="app">
    <div id="nav">
      <!-- 跳转链接，查看 router.ts -->
      <router-link to="/">Home</router-link> |
      <router-link to="/cards">Cards</router-link> |
      <router-link to="/list">List</router-link> |
      <router-link to="/about">About</router-link>
    </div>
    <router-view />
  </div>
</template>

<style lang="scss">
#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}

#nav,
.home {
  text-align: center;
}

#nav {
  padding: 30px;
  a {
    font-weight: bold;
    color: #2c3e50;
    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>

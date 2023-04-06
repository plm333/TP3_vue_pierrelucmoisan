<template>
  <nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid px-5">
        <router-link class="navbar-brand text-dark" to="/"><h1>Arta</h1></router-link>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <ul class="nav navbar-nav navbar-right">
              <li class="nav-item">
                  <router-link class="nav-link text-dark active" to="/">Accueil</router-link>
              </li>
              <li class="nav-item">
                  <router-link class="nav-link text-dark" to="/about">Notre entreprise</router-link>
              </li>
              <li class="nav-item">
                  <router-link class="nav-link text-dark" to="/products">Articles</router-link>
              </li>
              <li class="nav-item">
                  <router-link class="nav-link text-dark" to="/new-product">Ajouter un article</router-link>
              </li>
            </ul>
          </div>
        </div>
    </div>
  </nav>
  <Router-view
  :inventory = "inventory"
  :addInv = "addInventory"
  :removeInv = 'removeInventory'
  :updateInv = 'updateInventory'
  />
</template>

<script>
import ProductDataService from '@/services/ProductDataService'

export default {
  data: () => {
    return {
      inventory: []
    }
  },
  methods: {
    addInventory (product) {
      this.inventory.push(product)
    },
    removeInventory (index) {
      this.inventory.splice(index, 1)
    },
    updateInventory (index, data) {
      this.inventory[index].name = data.name
      this.inventory[index].photo = data.photo
      this.inventory[index].price = data.price
      this.inventory[index].description = data.description
      this.inventory[index].type = data.type
    }
  },
  mounted () {
    ProductDataService.getAll()
      .then(response => {
        this.inventory = response.data
        console.log(response.data)
      })
  }
}
</script>

<template>
  <div class="justify-content-center">
    <div class="col d-flex justify-content-center">
      <div class="col-10 justify-content-center">
        <div v-for="(product) in inventory" :key="product.id" class="card text-center article article__wrapper">
          <div class='image__wrapper'>
              <img :src="('../img/'+product.photo)" class='image' alt=''/>
          </div>
          <div class="card-body">
            <h5 class="card-title">{{product.name}}</h5>
            <p class="card-text text-muted">{{product.description}}</p>
            <p class="card-text">${{product.price}} CAD</p>
            <p class="card-text text-muted">Catégorie : {{product.type}}</p>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
              <div class="buttons">
                <router-link :to="'edit-product/'+product.id" class="btn btn-success">Modifier</router-link>
                <button class="btn btn-danger" type="button" @click="deleteProduct">Supprimer</button>
                <!-- <router-link :to="'delete-product/'+product.id" class="btn btn-danger">Supprimer</router-link> -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="py-medium"></div>
      <footer class="footer">
        <div class="footer-left">
          <h1>Arta</h1>
          <p>5463 boul. St-Laurent
              Montréal H2T 2N9
              Canada
          </p>
          <span>1-514-966-3422</span>
          <div class="socials">
            <a href="#"><img :src="('../img/facebook.png')" alt="icone-facebook"/></a>
            <a href="#"><img :src="('../img/instagram.png')" alt="icone-instagram"/></a>
            <a href="#"><img :src="('../img/twitter.png')" alt="icone-twitter"/></a>
          </div>
        </div>
        <ul class="footer-right">
          <li>
              <h2>ACTUALITÉ</h2>
              <ul class="box">
                  <li><a href="#">Art Déco</a></li>
                  <li><a href="#">Couleur Magazine</a></li>
                  <li><a href="#">Lumière</a></li>
              </ul>
          </li>
          <li class="features">
              <h2>À PROPOS</h2>
              <ul class="box">
                  <li><a href="#">Biographie de Maya</a></li>
                  <li><a href="#">Maya Design</a></li>
                  <li><a href="#">Histoire Art Déco</a></li>
              </ul>
          </li>
          <li>
              <h2>CONTACT</h2>
              <ul class="box">
                  <li><a href="#">Contactez-nous</a></li>
                  <li><a href="#">Aide</a></li>
                  <li><a href="#">Termes et conditions</a></li>
              </ul>
          </li>
        </ul>
        <div class="footer-bottom">
            <p>&copy; Pierre-Luc Moisan - Tous les droits réservés - 2023</p>
        </div>
      </footer>
  </div>
</template>

<script>
import ProductDataService from '@/services/ProductDataService'
export default {
  props: ['inventory', 'addTo', 'removeInv'],
  methods: {
    deleteProduct () {
      ProductDataService.delete(this.id)
        .then(response => {
          this.removeInv(this.productIndex)
          this.$router.push({ name: 'products' })
        })
    }
  },
  computed: {
    product () {
      const product = this.inventory.find((p) => {
        return p.name === this.$route.params.id
      })
      return product
    },
    productIndex () {
      const index = this.inventory.findIndex((p) => {
        return p.name === this.$route.params.id
      })
      return index
    }
  }
}
</script>

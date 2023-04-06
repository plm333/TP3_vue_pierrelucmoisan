<template>
  <div class="product-add">
    <!-- Section-->
    <section class="py-5">
      <div class="container px-4 px-lg-5 mt-5">
        <div
          class="
            row
            gx-4 gx-lg-5
            row-cols-2 row-cols-md-3 row-cols-xl-2
            justify-content-center
          "
        >
          <div class="col-sm-12">
            <h4 class="display-5 text-center mb-5">Ajouter un article</h4>
            <hr class="my-4">
            <div class="alert alert-danger" v-show="message">{{ message }}</div>
            <div class="needs-validation" novalidate>
              <div class="row g-2">
                <div v-if="!submitted">
                  <div class="col-12">
                    <label for="productName" class="form-label"
                      >Nom de l'article</label
                    >
                    <input
                      type="text"
                      class="form-control mb-4"
                      id="productName"
                      placeholder=""
                      v-model="product.name"
                      required
                    />
                    <div class="invalid-feedback">Nom valide est requis.</div>
                  </div>
                  <div class="col-12">
                    <label for="productPhoto" class="form-label"
                      >Photo de l'article</label
                    >
                    <input
                      type="text"
                      class="form-control mb-4"
                      id="productPhoto"
                      placeholder=""
                      v-model="product.photo"
                      required
                    />
                    <div class="invalid-feedback">
                      Le chemin de téléchargement de la photo est invalide.
                    </div>
                  </div>
                  <div class="col-12">
                    <label for="productPrice" class="form-label">Prix</label>
                    <div class="input-group has-validation">
                      <span class="input-group-text mb-4">$</span>
                      <input
                        type="text"
                        class="form-control mb-4"
                        id="productPrice"
                        placeholder=""
                        v-model.number="product.price"
                        required
                      />
                      <div class="invalid-feedback">Le prix est un champ requis.</div>
                    </div>
                  </div>
                  <div class="col-12">
                    <label for="productDescription" class="form-label"
                      >Description de l'article</label
                    >
                    <textarea
                      class="form-control mb-4"
                      id="productDescription"
                      placeholder=""
                      v-model="product.description"
                    ></textarea>
                    <div class="invalid-feedback">La description est un champ requis.</div>
                  </div>
                  <div class="col-12">
                    <label for="productType" class="form-label"
                      >Type d'article</label
                    >
                    <select
                      class="form-control mb-4"
                      id="productType"
                      placeholder=""
                      v-model="product.type"
                      required
                    >
                      <option value="">Selectionnez le type</option>
                      <option value="cuisine">Cuisine</option>
                      <option value="decorations">Décorations</option>
                      <option value="meubles">Meubles</option>
                      <option value="lampes">Lampes</option>
                      <option value="salleDeBain">Salle de bain</option>
                    </select>
                    <div class="invalid-feedback">
                      Le chemin de téléchargement de la photo est invalide.
                    </div>
                  </div>
                  <div class="text-center">
                    <button class="btn btn-success mt-3" type="button" @click="saveProduct">Sauvegarder</button>
                  </div>
                  </div>
                <div v-else>
                  <div  class="alert alert-success alert-dismissible fade show" role="alert">
                  <strong> Votre article a été ajouté avec succès!</strong>
                  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>
                  <button class="w-100 btn btn-success btn-lg mt-3" type="button" @click="newProduct">Ajouter un article</button>
                </div>
                <hr class="my-4">
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
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
  props: ['addInv'],
  data () {
    return {
      message: null,
      submitted: false,
      product: {
        name: '',
        photo: '',
        price: '',
        description: '',
        type: ''
      }
    }
  },
  methods: {
    saveProduct () {
      ProductDataService.create(this.product)
        .then(response => {
          // console.log(response.data)
          this.product.id = response.data.id
          this.addInv(this.product)
          this.message = null
          this.submitted = true
          this.$router.push({ name: 'products' })
          // console.log(this.submitted)
        })
        .catch(e => {
          console.log(e.response.data.message)
          this.message = e.response.data.message
        })
    },
    newProduct () {
      this.submitted = false
      this.product = {}
    }
  }
}
</script>

<template>
    <!-- Section-->
    <section class="py__home-large">
        <div class="banner">
            <div class="content">
                <h2 class="">Bienvenue chez</h2>
                <span>Arta</span>
                <p>Une boutique moderne de meubles et d'accessoires</p>
                <router-link to="/products">Liste des articles &#8594;</router-link>
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
    </section>
</template>

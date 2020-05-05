'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "09725be8d6e119ae133c35d3b2f5ca3b",
"assets/assets/about.html": "cca535e84bb3f1ad20cd1423638d0253",
"assets/assets/AssetManifest.json": "47cb272ae787cc1021bbf76daf726e5a",
"assets/assets/assets/about.html": "cca535e84bb3f1ad20cd1423638d0253",
"assets/assets/assets/AssetManifest.json": "3dcd5dbf8b26dde048f0b9ede7beb13d",
"assets/assets/assets/assets/about.html": "cca535e84bb3f1ad20cd1423638d0253",
"assets/assets/assets/assets/avatar.jpg": "25bcb8ae00bf539fc4294d2299cde32f",
"assets/assets/assets/assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/assets/assets/assets/FontManifest.json": "59c37979205b4b43589051e92e27cbcd",
"assets/assets/assets/assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/assets/assets/assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/assets/assets/assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"assets/assets/assets/assets/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"assets/assets/assets/assets/medium_light.png": "bd516690c99267a778885736015befe8",
"assets/assets/assets/assets/moon.png": "a270b8a10d1a9a52441bf5a322dd1b86",
"assets/assets/assets/assets/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"assets/assets/assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/assets/assets/FontManifest.json": "592290621294619b16740a9d89232ba6",
"assets/assets/assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/assets/assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/assets/assets/LICENSE": "b860dfa439f5899cd2fdc3256ca33fc2",
"assets/assets/assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"assets/assets/assets/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"assets/assets/assets/medium_light.png": "bd516690c99267a778885736015befe8",
"assets/assets/assets/moon.png": "a270b8a10d1a9a52441bf5a322dd1b86",
"assets/assets/assets/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"assets/assets/avatar.jpg": "5a41d0886c8efa9675149c7ec8e37a9a",
"assets/assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/assets/FontManifest.json": "592290621294619b16740a9d89232ba6",
"assets/assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/assets/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"assets/assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/assets/LICENSE": "a73ca8489490efae0e5747cc2ca63a8c",
"assets/assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"assets/assets/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"assets/assets/medium_light.png": "bd516690c99267a778885736015befe8",
"assets/assets/moon.png": "a270b8a10d1a9a52441bf5a322dd1b86",
"assets/assets/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"assets/assets/works/bitcoin.png": "2a80515000fb6b0a98d94b65185a0c48",
"assets/assets/works/bmi.png": "148820bc0bea000aaf6ef4a6340ba0bd",
"assets/assets/works/calc.png": "18682e07575b9d4bc571899a14fb1ad1",
"assets/assets/works/covid.png": "79c40d06af10405b85ad5251e9f292c7",
"assets/assets/works/flash.png": "837c4288713dbe56af119bf799ccedee",
"assets/assets/works/magicball.png": "8bfec85deeb3edb0f9de3a44193b5292",
"assets/assets/works/messio.png": "827f062f04c16a164d9d7e9d13f24916",
"assets/assets/works/quiz.png": "64f7d82132a0e9a5bce48f2e83ec8b86",
"assets/assets/works/rolldice.png": "c05b11eacb54e48efb2c07b5a53163c6",
"assets/assets/works/storyapp.png": "455466661c44d65d4ee5e79f7eec3f96",
"assets/assets/works/teddy.png": "6178183d61307f2e858e765b41253a9e",
"assets/assets/works/todo.png": "8e23e18b0598373110ac515d93d7ca97",
"assets/assets/works/weather2.png": "273a881ca0e3533e2aec971f28841c14",
"assets/assets/works/xly.png": "df5cd93ecd4020ab0877cca6393510ec",
"assets/FontManifest.json": "592290621294619b16740a9d89232ba6",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "a73ca8489490efae0e5747cc2ca63a8c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "1bb3b9516456fa76110578a1980f957c",
"/": "1bb3b9516456fa76110578a1980f957c",
"main.dart.js": "6bea6e8eac55c716489eac6a11df1440",
"manifest.json": "2dfd50e84e8bd1342acecd27b33974d6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "8d4a8ccdc9e5034e561a004e73e96c84",
"assets/assets/images/cafe.jpg": "6ef8b91614d5fe16a4599104b4fe83fd",
"assets/assets/images/cocktail.jpg": "1c2fe60deb5554f4c4e01ecdafdd77f7",
"assets/assets/images/couscous.jpg": "631d140c83fdc3a698ceb74110eab526",
"assets/assets/images/dessert.jpg": "c0153589505590f31d3af2917412d8ee",
"assets/assets/images/drink.jpg": "452f53b7aee14c3b918eee9cdfd75105",
"assets/assets/images/jus.jpg": "f454d1ff1295e9c8645146ec7b1994be",
"assets/assets/images/logo.png": "2177d03645f3a90a31f30f77f1567dfb",
"assets/assets/images/logo.svg": "844ed483497972172ab6ce7299cb5895",
"assets/assets/images/menurest.jpg": "18848b85bb982a1442b2575650db23c6",
"assets/assets/images/pates.jpg": "6a0a10897d5bac67157184466ecd518a",
"assets/assets/images/pizza.png": "e4a089e3a26007e615a0cd71b4a1b7f5",
"assets/assets/images/restmmadenone.png": "ada123fdc1d7b0b82efc778329c06cbd",
"assets/assets/images/roommaaden.png": "8b0651d603c2d15784332f16337b2186",
"assets/assets/images/roommaadenfour.png": "06182261de1c9b1a7e675e70eb426ea0",
"assets/assets/images/roommaadenthree.png": "6a0e3e0e2c1be947db17d478b5f6c2d3",
"assets/assets/images/roommaadentwo.png": "6f8c9a98f4a650b52d865e41bfaa08e7",
"assets/assets/images/salade-cesar-1.jpeg": "586583683b3855fab15202d60a1c231a",
"assets/assets/images/Salade-de-quinoa.jpg": "9e4edb428afcf700da6851add17b5a34",
"assets/assets/images/Salade-peche.jpg": "04863424e8299449a149aebcae97ff41",
"assets/assets/images/salade.jpg": "21932731fd6683c54525c14ba65cad36",
"assets/assets/images/salade2.jpg": "38d4723acd98fa0e7b7849c4e6cd49b7",
"assets/assets/images/snack.jpg": "5706a5f2e37c2c861d9dd6c00983f642",
"assets/assets/images/soda.jpg": "2b16f10f2b5a20eef500e2ee3abbe50e",
"assets/assets/images/SPA5.jpg": "072a5097f927ec9e00dbf2bc1507854f",
"assets/assets/images/SpaFive.png": "c162621b04266ace48adbed7e010f125",
"assets/assets/images/SpaFour.png": "92c70f110a03852a426e10bc45a1ccad",
"assets/assets/images/spamaaden.jpg": "8a609f5c1b75a91eacc0b38aa149f9b9",
"assets/assets/images/SpaNine.png": "5a2931c3ba3664b40c4a224c2ca6f1da",
"assets/assets/images/SpaOne.png": "13c65784985002687997fc21da394c72",
"assets/assets/images/SpaSeven.png": "d46ad46c088232fc607c346287ae737d",
"assets/assets/images/SpaSix.png": "9e1b38c9abc551447fc135862f70625f",
"assets/assets/images/SpaTen.png": "a49be51c4523a6f7caa7beef9f2bd2b3",
"assets/assets/images/SpaThree.png": "30e7073d677a30b56e1ac1c3771cb14b",
"assets/assets/images/SpaTwo.png": "06128da75efa6e5d0d1d56c108b8eed6",
"assets/assets/images/tajine.jpg": "2b0a8f9fa420bf779bf244838ff2ee95",
"assets/assets/images/tanjia.jpg": "47d2696dfaa6413732933f51a7305c0c",
"assets/assets/images/tomatesmozzarelle.jpg": "5981aebc3cfeea63714b1ecb60fc54e6",
"assets/assets/images/water.jpg": "d2c0fddebd9c8a64967daff534c790b4",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "d758903bbcc3f5868baa821d3a18f057",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"assets/packages/getwidget/icons/dribble.png": "1e36936e4411f32b0e28fd8335495647",
"assets/packages/getwidget/icons/facebook.png": "293dc099a89c74ae34a028b1ecd2c1f0",
"assets/packages/getwidget/icons/google.png": "596c5544c21e9d6cb02b0768f60f589a",
"assets/packages/getwidget/icons/line.png": "da8d1b531d8189396d68dfcd8cb37a79",
"assets/packages/getwidget/icons/linkedin.png": "822742104a63a720313f6a14d3134f61",
"assets/packages/getwidget/icons/pinterest.png": "d52ccb1e2a8277e4c37b27b234c9f931",
"assets/packages/getwidget/icons/slack.png": "19155b848beeb39c1ffcf743608e2fde",
"assets/packages/getwidget/icons/twitter.png": "caee56343a870ebd76a090642d838139",
"assets/packages/getwidget/icons/wechat.png": "ba10e8b2421bde565e50dfabc202feb7",
"assets/packages/getwidget/icons/whatsapp.png": "30632e569686a4b84cc68169fb9ce2e1",
"assets/packages/getwidget/icons/youtube.png": "1bfda73ab724ad40eb8601f1e7dbc1b9",
"assets/shaders/ink_sparkle.frag": "766c8cc582887d79fd06bb0d7caf09e0",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "dfe13373a5e4eba70e951646065b9822",
"/": "dfe13373a5e4eba70e951646065b9822",
"loader.css": "bbb9ca3416aea614ef7b83b8093d5e8e",
"logo.png": "2177d03645f3a90a31f30f77f1567dfb",
"main.dart.js": "b780f2df80a37d34b575e94f61755d45",
"manifest.json": "226e957edff4b0d19b744ca835f2b669",
"version.json": "f76726ce96debb066b538f46dd84b163"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

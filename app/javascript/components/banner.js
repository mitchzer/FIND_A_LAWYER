import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["We can make it legal", "We can make it legal"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

import Typed from 'typed.js';

function dynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Be more healthy", "Be more powerful"],
    typeSpeed: 50,
    loop: true
  });
}

export { dynamicBannerText };

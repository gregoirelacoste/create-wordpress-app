const mainMenu = document.querySelector("#menu");
const burgerMenu = document.querySelector("#menu-burger");
const burgerLink = document.querySelector("#burger-link");

const openClose = elt =>
  elt.addEventListener(
    "click",
    function(e) {
      // Modification du menu burger
      if (!burgerMenu.getAttribute("class")) {
        burgerMenu.setAttribute("class", "clicked");
      } else {
        burgerMenu.removeAttribute("class");
      }
      // Slide Menu
      if (mainMenu.getAttribute("class") != "visible") {
        mainMenu.setAttribute("class", "visible");
      } else {
        mainMenu.setAttribute("class", "invisible");
      }
    },
    false
  );

openClose(burgerMenu);
openClose(burgerLink);

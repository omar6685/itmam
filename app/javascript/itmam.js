


const mainImage = document.querySelector(".main-image");
const imageSecondery = document.querySelector(".image-secondery");

window.addEventListener('scroll', () => {
    let scroll = window.pageYOffset;

    // Calculate the rotation angle based on the scroll position
    let rotation = (scroll / (document.documentElement.scrollHeight - window.innerHeight)) * 150;

    // Apply the rotation to the main image
    mainImage.style.transform = `rotate(${rotation}deg)`;


});

// Add the following code inside the window.addEventListener('scroll', () => {}) block

const items = document.querySelectorAll(".accordion button");

function toggleAccordion() {
  const itemToggle = this.getAttribute('aria-expanded');

  for (i = 0; i < items.length; i++) {
    items[i].setAttribute('aria-expanded', 'false');
  }

  if (itemToggle == 'false') {
    this.setAttribute('aria-expanded', 'true');
  }
}

items.forEach(item => item.addEventListener('click', toggleAccordion));

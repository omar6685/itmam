


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

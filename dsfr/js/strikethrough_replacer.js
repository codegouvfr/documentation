// JavaScript code pour remplacer le texte barré par du texte barré en HTML
document.addEventListener("DOMContentLoaded", function () {
    // Sélectionne tous les éléments avec la classe markdown-content
    const markdownElements = document.querySelectorAll(".markdown-content");

    markdownElements.forEach((element) => {
        let innerHTML = element.innerHTML;

        // Remplace ~~texte~~ par <del>texte</del>
        innerHTML = innerHTML.replace(/~~(.*?)~~/g, "<del>$1</del>");

        element.innerHTML = innerHTML;
    });

});


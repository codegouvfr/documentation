document.addEventListener("DOMContentLoaded", function () {
    // Sélectionner tous les éléments avec la classe 'markdown-content'
    const markdownElements = document.querySelectorAll(".markdown-content");

    // Parcourir chaque élément ayant la classe 'markdown-content'
    markdownElements.forEach((element) => {
        // Obtenir tous les éléments de liste dans chaque élément 'markdown-content'
        const listItems = element.querySelectorAll("li");

        // Parcourir chaque élément de la liste
        listItems.forEach((listItem) => {
            let innerHTML = listItem.innerHTML;

            // Remplacer [x] par une case à cocher cochée en HTML ou [ ] par une case non cochée
            if (innerHTML.includes("[x]") || innerHTML.includes("[ ]")) {
                // Supprimer les balises <p> enveloppantes si elles existent
                innerHTML = innerHTML.replace(/<p>(.*?)<\/p>/g, "$1").trim();

                // Appliquer des styles en ligne pour supprimer le style de liste
                listItem.style.listStyleType = "none";

                // Si la tâche est cochée ([x])
                if (innerHTML.includes("[x]")) {
                    const taskDescription = innerHTML.replace("[x]", "").trim();
                    listItem.innerHTML = `
                    <div class="fr-checkbox-group">
                        <input  id="checkbox-${taskDescription}" type="checkbox" checked>
                        <label class="fr-label" for="checkbox-${taskDescription}">
                            ${taskDescription}
                        </label>
                    </div>`;
                }

                // Si la tâche n'est pas cochée ([ ])
                else if (innerHTML.includes("[ ]")) {
                    const taskDescription = innerHTML.replace("[ ]", "").trim();
                    listItem.innerHTML = `
                    <div class="fr-checkbox-group">
                        <input id="checkbox-${taskDescription}" type="checkbox">
                        <label class="fr-label" for="checkbox-${taskDescription}">
                            ${taskDescription}
                        </label>
                    </div>`;
                }
            }
        });
    });
});

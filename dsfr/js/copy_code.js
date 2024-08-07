document.addEventListener('DOMContentLoaded', () => {
    const codeBlocks = document.querySelectorAll('pre > code');
    console.log(codeBlocks)


    codeBlocks.forEach((codeBlock, index) => {
        const copyButton = document.createElement('button');
        copyButton.textContent = 'Copier';
        copyButton.className = 'fr-btn fr-btn--sm copy-code-button';
        copyButton.setAttribute('data-clipboard-index', index);
        codeBlock.parentElement.style.position = 'relative';
        codeBlock.parentElement.appendChild(copyButton);

        copyButton.addEventListener('click', () => {
            const textarea = document.createElement('textarea');
            textarea.textContent = codeBlock.textContent;
            document.body.appendChild(textarea);
            textarea.select();
            document.execCommand('copy');
            document.body.removeChild(textarea);

            // Indiquer que le texte a été copié
            copyButton.textContent = 'Copié!';
            setTimeout(() => {
                copyButton.textContent = 'Copier';
            }, 2000);

        });
    });
});

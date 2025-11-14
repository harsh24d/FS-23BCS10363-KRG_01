document.addEventListener('DOMContentLoaded', () => {
    const yearEl = document.getElementById('year');
    if (yearEl) {
        yearEl.textContent = new Date().getFullYear().toString();
    }

    activateCardShortcuts();
    wireGalleryThumbnails();
});

function activateCardShortcuts() {
    // Let the entire card surface act as a link for easier tapping.
    document.querySelectorAll('.property-card').forEach(card => {
        card.addEventListener('click', event => {
            const anchor = card.querySelector('a');
            if (!anchor) {
                return;
            }
            if (event.target.closest('a')) {
                return;
            }
            anchor.click();
        });
        card.addEventListener('keypress', event => {
            if (event.key === 'Enter') {
                const anchor = card.querySelector('a');
                if (anchor) {
                    anchor.click();
                }
            }
        });
        card.setAttribute('tabindex', '0');
    });
}

function wireGalleryThumbnails() {
    const primaryImage = document.getElementById('primaryImage');
    if (!primaryImage) {
        return;
    }
    document.querySelectorAll('.thumb').forEach(thumb => {
        thumb.addEventListener('click', () => {
            const nextSrc = thumb.getAttribute('data-src');
            if (nextSrc) {
                primaryImage.src = nextSrc;
            }
        });
    });
}

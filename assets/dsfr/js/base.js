const areas = document.querySelectorAll("h2, h3");

const observer = new IntersectionObserver((entries) => {

  entries.forEach((entry) => {

    entry.target.classList.toggle("show", entry.isIntersecting);
    const id = entry.target.getAttribute("id");
    let activeElement = $('a[href="#' + id + '"]:not(.headerlink)');

    if (entry.isIntersecting) {
      let accordionButtonId = $(activeElement[0]).parents().eq(2).attr("id");
      if (accordionButtonId) openAccordionScrollSpy(true, accordionButtonId);
      activeElement.attr("aria-current", "true");

    } else {
      let accordionButtonId = $(activeElement[0]).parents().eq(2).attr("id");
      if (accordionButtonId) openAccordionScrollSpy(false, accordionButtonId);
      activeElement.removeAttr("aria-current");}
  });
});

areas.forEach((area) => {
  observer.observe(area);
});

function openAccordionScrollSpy(bool, accordionButtonId) {
  let accordionButton = $('button[aria-controls="' + accordionButtonId + '"]');
  if (bool) {
    accordionButton.attr("aria-expanded", "true");
    accordionButton.attr("aria-current", "true");
  } else {
    accordionButton.removeAttr("aria-expanded");
    accordionButton.removeAttr("aria-current");
  }
}



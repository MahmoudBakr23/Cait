const topNavItems = document.querySelectorAll(".nav-item");
const homeLink = document.querySelector(".home-link");
const profileLink = document.querySelector(".profile-link");
const aboutLink = document.querySelector(".about-link");
const blogLink = document.querySelector(".blog-link");
const homeIcon = document.querySelector(".fa-home");
const profileIcon = document.querySelector(".fa-user-circle");
const aboutIcon = document.querySelector(".fa-info-circle");
const blogIcon = document.querySelector(".fa-book");

topNavItems.forEach((element) => {
  element.addEventListener("mouseover", () => {
    if (element.classList.contains("home")) {
      homeLink.classList.remove("d-none");
      homeLink.style.color = "#444";
      homeIcon.style.color = "#444";
    } else if (element.classList.contains("profile")) {
      profileLink.classList.remove("d-none");
      profileLink.style.color = "#444";
      profileIcon.style.color = "#444";
    } else if (element.classList.contains("about")) {
      aboutLink.classList.remove("d-none");
      aboutLink.style.color = "#444";
      aboutIcon.style.color = "#444";
    } else if (element.classList.contains("blog")) {
      blogLink.classList.remove("d-none");
      blogLink.style.color = "#444";
      blogIcon.style.color = "#444";
    }
  });
  element.addEventListener("mouseout", () => {
    if (element.classList.contains("home")) {
      homeLink.classList.add("d-none");
      homeLink.style.color = "#fff";
      homeIcon.style.color = "#fff";
    } else if (element.classList.contains("profile")) {
      profileLink.classList.add("d-none");
      profileLink.style.color = "#fff";
      profileIcon.style.color = "#fff";
    } else if (element.classList.contains("about")) {
      aboutLink.classList.add("d-none");
      aboutLink.style.color = "#fff";
      aboutIcon.style.color = "#fff";
    } else if (element.classList.contains("blog")) {
      blogLink.classList.add("d-none");
      blogLink.style.color = "#fff";
      blogIcon.style.color = "#fff";
    }
  });
});

const contents = document.querySelector(".contents");
const buttons = document.querySelector(".buttons");

const numOfContent = 178;
const showContent = 10;
const showButton = 5;
const maxPage = Math.ceil(numOfContent / maxContent);
let page = 1;











const makeContent = (id) => {
  const content = document.createElement("li");
  content.classList.add("content");
  content.innerHTML = `
    <span class="content__id">${id}</span>
    <span class="content__title">게시물 제목</span>
    <span class="content__author">작성자</span>
    <span class="content__date">2022.01.01</span>
  `;
  return content;
};

const makeButton = (id) => {
  const button = document.createElement("button");
  button.classList.add("button");
  button.dataset.num = id;
  button.innerText = id;
  button.addEventListener("click", (e) => {
    Array.prototype.forEach.call(buttons.children, (button) => {
      if (button.dataset.num) button.classList.remove("active");
    });
    e.target.classList.add("active");
    renderContent(parseInt(e.target.dataset.num));
  });
  return button;
};



















const goPrevPage = () => {
  page -= maxButton;
  render(page);
};

const goNextPage = () => {
  page += maxButton;
  render(page);
};

const prev = document.createElement("button");
prev.classList.add("button", "prev");
prev.innerHTML = '<ion-icon name="chevron-back-outline"></ion-icon>';
prev.addEventListener("click", goPrevPage);

const next = document.createElement("button");
next.classList.add("button", "next");
next.innerHTML = '<ion-icon name="chevron-forward-outline"></ion-icon>';
next.addEventListener("click", goNextPage);






























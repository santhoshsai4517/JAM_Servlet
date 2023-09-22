/** @format */


const contentElm = document.getElementById('content');

// Creating tiles on the screen
const renderTiles = () => {
	for (let i = 0; i < 70; i++) {
		const linkElm = document.createElement('a');
		linkElm.setAttribute('href','topics?id='+(i+1));
		linkElm.setAttribute('id', 'link');
		linkElm.setAttribute('name', i);
		linkElm.textContent = i < 9 ? `0${i + 1}` : i + 1;
		contentElm.appendChild(linkElm);
	}
};

/*contentElm.addEventListener('click', (event) => {
	if (event.target.tagName === 'A') openModal(event);
});*/

renderTiles();
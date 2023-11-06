'use strict'
// active設定ためのjs
const list = document.querySelectorAll('.navi .list')

const activetionAdd = (item) => {
    item.classList.add('active');
    // thisがよくわからん
}

// naviバーのアクティブ設定
list.forEach(tab => {
    tab.addEventListener('click', () => {
        list.forEach(tab2=>{
            tab2.classList.remove('active');
            // これで一度全部removeしている。
        });
        activetionAdd(tab);
    });
});

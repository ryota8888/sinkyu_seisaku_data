'use strict'
// active設定ためのjs
const nav_list = document.querySelectorAll('.navi .list');
const check_item = document.querySelectorAll('.check_item');


const activetionAdd = (item) => {
    item.classList.add('active');
    
}

// naviバーのアクティブ設定
nav_list.forEach(tab => {
    tab.addEventListener('click', () => {
        nav_list.forEach(tab2=>{
            tab2.classList.remove('active');
            // これで一度全部removeしている。
        });
        activetionAdd(tab);
    });
});

check_item.forEach(ch_item => {
    ch_item.addEventListener('click', () => {
        ch_item.classList.toggle('active');
    });
});


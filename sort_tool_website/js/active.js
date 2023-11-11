'use strict'
// active設定ためのjs
const nav_list = document.querySelectorAll('.navi .list');
const check_item = document.querySelectorAll('.check_item');
const fil_reset = document.querySelector('.filter_modal .reset_btn');

console.log('アクティブjs 接続中');
// console.log(fil_reset);

const activetionAdd = (item) => {
    item.classList.add('active');
}
const allActiveRemove = (list_item) => {
    console.log('removeしました。');
    list_item.forEach(item=>{
        item.classList.remove('active');
        // これで一度全部removeしている。
    });
}

// naviバーのアクティブ設定
nav_list.forEach(tab => {
    tab.addEventListener('click', () => {
        allActiveRemove(nav_list);
        activetionAdd(tab);
    });
});

// フィルターのアクティブ設定

// アクティブ追加
check_item.forEach(ch_item => {
    ch_item.addEventListener('click', () => {
        ch_item.classList.toggle('active');
    });
});
// リセット
fil_reset.addEventListener('click',() => {
    allActiveRemove(check_item);
    // console.log('クリック');
});


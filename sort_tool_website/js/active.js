'use strict'
// active設定js
const nav_list = document.querySelectorAll('.navi .list');
const check_item = document.querySelectorAll('.check_item');
const fil_reset = document.querySelector('.filter .reset_btn');
const sort_item = document.querySelectorAll('.sort .item_box .item');
const sort_reset = document.querySelector('.sort .reset_btn');
const role_btn = document.querySelectorAll('.char_list_container .item2');  //All,str,spl切り替え

console.log('active.js 接続中');

const allActiveRemove = (list_item) => {
    list_item.forEach(item => {
        item.classList.remove('active');
        // 一度全部removeしている。
    });
}

const activeAdd = (item) => {
    item.forEach(tab => {
        //removeなし&toggle
        tab.addEventListener('click', () => {
            tab.classList.toggle('active');
        });
    });
}

const uniqueActiveAdd = (item) => {
    item.forEach(tab => {
        //removeあり&add
        tab.addEventListener('click', () => {
            allActiveRemove(item);
            tab.classList.add('active');
        });
    });
}

// naviバーのアクティブ設定
uniqueActiveAdd(nav_list);

// all,str,splのアクティブ設定
uniqueActiveAdd(role_btn);

// フィルターのアクティブ設定-------------------------
activeAdd(check_item);
// リセット
fil_reset.addEventListener('click', () => {
    allActiveRemove(check_item);
});

// 並べ替えのアクティブ設定--------------------------
uniqueActiveAdd(sort_item);
// リセット
sort_reset.addEventListener('click', () => {
    allActiveRemove(sort_item);
    sort_item[0].classList.add('active');
});


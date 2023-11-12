// モーダル用js

// フィルター
const fil_open = document.querySelector('.item3_container .filter_icon');
const fil_modal = document.querySelector('.filter');
const fil_close = document.querySelector('.filter .close_btn');
const fil_mask = document.querySelector('.filter .filter_m');

const sort_open = document.querySelector('.item3_container .sort_icon');
const sort_modal = document.querySelector('.sort');
const sort_close = document.querySelector('.sort .close_btn');
const sort_mask = document.querySelector('.sort .sort_m');

console.log('モーダルjs 接続中');
// console.log(fil_open);

const OpenModal = (btn, modal) => {
    btn.addEventListener('click', () => {
        modal.style.display = 'block';
    });
}

const CloseModal = (close_btn, modal, mask) => {

    //マスクモーダル(薄暗い部分)をクリックして非表示
    document.addEventListener('click', (close_bg) => {
        close_bg.target == mask ? modal.style.display = 'none' : '';
    })
    //キャンセルボタンクリックで非表示
    close_btn.addEventListener('click', () => {
        modal.style.display = 'none';
    });

}

// フィルター
OpenModal(fil_open,fil_modal);
CloseModal(fil_close, fil_modal, fil_mask);

// 並べ替え
OpenModal(sort_open,sort_modal);
CloseModal(sort_close,sort_modal,sort_mask);
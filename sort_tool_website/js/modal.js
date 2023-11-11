// モーダル用js

// フィルター
const fil_open = document.querySelector('.item3_container .filter_icon');
const fil_modal = document.querySelector('.filter_modal');
const fil_close = document.querySelector('.filter_modal .close_btn');
const fil_mask = document.querySelector('.filter_modal .filter_modal_mask');

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

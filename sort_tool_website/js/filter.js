// testファイル
console.log('フィルターjs 接続中');
const char_img = document.querySelectorAll('.char_img');
let check_active = document.querySelectorAll('.check_item.active');

// console.log(check_active);

check_item.forEach(btn => {
    btn.addEventListener('click', () => {
        //チェックアイテムの更新
        check_active = document.querySelectorAll('.check_item.active');
        // console.log(check_active);
        // ここでフィルターする
        char_img.forEach(img => {
            img.style.display = 'none';    /**一度全部リセット */
            check_active.forEach(item => {
                // console.log(`${img.value} ${item.value}`);
                if (img.value == item.value) {
                    img.style.display = 'block';
                }
            });
        });
        console.log('');
    });
});


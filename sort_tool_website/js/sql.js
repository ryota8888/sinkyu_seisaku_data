console.log('sql.js接続中');
const rarity = document.querySelectorAll('#rarity .check_item');
const char_img = document.querySelectorAll('.char_img');
const img_list = document.querySelector('.list_content_bg ul')
let r_active = document.querySelectorAll('#rarity .check_item.active');

const fetch_api = (data) => {
    fetch('../php/data_push.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(res => {
            img_list.innerHTML = '';
            res.forEach(item => {
                img_list.innerHTML += `<li class="char_img img_click ${item.name_alpha}"></li>`;
                console.log(item.name_alpha);
            });
        })
        .catch(error => {
            console.log(error);
        });

}


rarity.forEach(fil_item => {
    fil_item.addEventListener('click', () => {
        let request = [1, 2, 3];
        r_active = document.querySelectorAll('.check_item.active');
        if (r_active.length) {  //アクティブがあるときのみ実行
            request = [];
            r_active.forEach(add_item => {
                request.push(add_item.value);
                console.log(request);
            });
        }
        fetch_api(request);

    });
});

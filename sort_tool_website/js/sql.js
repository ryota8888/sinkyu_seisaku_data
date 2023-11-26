console.log('sql.js接続中');
const c_list = [];
c_list[0] = document.querySelectorAll('#rarity .check_item');
c_list[1] = document.querySelectorAll('#attack .check_item');
c_list[2] = document.querySelectorAll('#defense .check_item');
c_list[3] = document.querySelectorAll('#class .check_item');
c_list[4] = document.querySelectorAll('#position .check_item');
c_list[5] = document.querySelectorAll('#school .check_item');

let c_list_act = [];
c_list_act[0] = document.querySelectorAll('#rarity .check_item.active');
c_list_act[1] = document.querySelectorAll('#attack .check_item.active');
c_list_act[2] = document.querySelectorAll('#defense .check_item.active');
c_list_act[3] = document.querySelectorAll('#class .check_item.active');
c_list_act[4] = document.querySelectorAll('#position .check_item.active');
c_list_act[5] = document.querySelectorAll('#school .check_item.active');

const char_img = document.querySelectorAll('.char_img');
const img_list = document.querySelector('.list_content_bg ul')
let r_active = document.querySelectorAll('#rarity .check_item.active');
let a_active = document.querySelectorAll('#attack .check_item.active');

const fetch_api = (data) => {
    url = '../php/data_push.php';
    method_data = 'POST';
    c_type = 'application/json';

    fetch(url, {
        method: method_data,
        headers: { 'Content-Type': c_type },
        body: JSON.stringify(data)  //データ転送
    })
        .then(response => response.json())  //データ受信
        .then(res => {
            img_list.innerHTML = '';
            console.log(res);
            res.forEach(item => {
                img_list.innerHTML += `<li class="char_img img_click ${item.name_alpha}"></li>`;
                console.log(item.name_alpha);
            });
        })
        .catch(error => {
            console.log('エラーが発生しました。');
        });
}

const pushArray = (item) => {
    let retrunReq = [];
    item.forEach(nestItem => {
        retrunReq.push(nestItem.value);
    });
    return retrunReq;
}

check_item.forEach(fil_item => {
    fil_item.addEventListener('click', () => {
        let request = [];
        c_list.forEach(list => {
            request.push(pushArray(list));
        });
        c_list_act[0] = document.querySelectorAll('#rarity .check_item.active');
        c_list_act[1] = document.querySelectorAll('#attack .check_item.active');
        c_list_act[2] = document.querySelectorAll('#defense .check_item.active');
        c_list_act[3] = document.querySelectorAll('#class .check_item.active');
        c_list_act[4] = document.querySelectorAll('#position .check_item.active');
        c_list_act[5] = document.querySelectorAll('#school .check_item.active');

        for (let i = 0; i < c_list.length; i++) {
            if (c_list_act[i].length) {  //アクティブがあるときのみ実行
                request[i] = [];
                c_list_act[i].forEach(add_item => {
                    request[i].push(add_item.value);
                });
            }
        }
        console.log(request[0]);
        fetch_api(request);
    });
});
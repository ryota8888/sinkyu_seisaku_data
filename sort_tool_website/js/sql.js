console.log('sql.js接続中');
const filID =[];
filID[0]='rarity';
filID[1]='attack';
filID[2]='defense';
filID[3]='class';
filID[4]='position';
filID[5]='school';

const c_list = [];
let c_list_act = [];

//各filter_itemの要素を取得
filID.forEach((id,index) => {
    c_list[index] = document.querySelectorAll(`#${id} .check_item`);
    c_list_act[index] = document.querySelectorAll(`#${id} .check_item.active`);
});

const img_list = document.querySelector('.list_content_bg ul')

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
            console.log('--検索結果--');
            res.forEach(item => {
                img_list.innerHTML += `<li class="char_img img_click ${item.name_alpha}"></li>`;
                console.log(item.name_alpha);
            });
        })
        .catch(error => {
            img_list.innerHTML = '<li class="message_box"><div class="error_message">問題が発生したため、検索に失敗しました。<br>ページのリロードをお試しください。<br>もしリロードをしても解決しなかった場合、<a href="#">バグ報告タブ</a>にてご報告いただけますと幸いです。</div></li>';
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
        filID.forEach((id,index) => {
            c_list_act[index] = document.querySelectorAll(`#${id} .check_item.active`);
        });

        c_list_act.forEach((actItem,index) => {  //c_list_actの数まわす
            if(actItem.length){  //アクティブ状態のアイテムがあるときのみ実行
                request[index]=[];
                request[index]=pushArray(actItem);  //各actItemのアクティブになっている数まわす
            }
        });
        fetch_api(request);
    });
});
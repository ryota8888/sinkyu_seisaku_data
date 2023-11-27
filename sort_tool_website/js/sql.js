console.log('sql.js接続中');
const filID = [];
filID[0] = 'rarity';
filID[1] = 'attack';
filID[2] = 'defense';
filID[3] = 'class';
filID[4] = 'position';
filID[5] = 'school';

const fil_list = [];
let fil_list_act = [];

//各filter_itemの要素を取得
filID.forEach((id, index) => {
    fil_list[index] = document.querySelectorAll(`#fil_${id} .check_item`);
    fil_list_act[index] = document.querySelectorAll(`#fil_${id} .check_item.active`);
});
const img_list = document.querySelector('.list_content_bg ul')

const connect_DB = (data) => {
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

// フィルターのsql問い合わせ
check_item.forEach(fil_item => {
    fil_item.addEventListener('click', () => {

        //指定された条件を抽出する
        let request = [];
        fil_list.forEach(list => {
            request.push(pushArray(list));
        });
        filID.forEach((id, index) => {
            fil_list_act[index] = document.querySelectorAll(`#fil_${id} .check_item.active`);
        });

        fil_list_act.forEach((actItem, index) => {  //fil_list_actの数まわす
            if (actItem.length) {  //アクティブ状態のアイテムがあるときのみ実行
                request[index] = [];
                request[index] = pushArray(actItem);  //各actItemのアクティブになっている数まわす
            }
        });

        //SQL文作成
        let sql = "SELECT name_alpha FROM char_info WHERE";
        let whereElem = [];
        request.forEach((array, index) => {
            whereElem[index] = ` (${filID[index]} in(`;   //閉じかっこは次で入れる。
            whereElem[index] += `${array.join(',')}))`;   //配列をカンマ区切りで出力
        });
        sql += whereElem.join(' AND');

        connect_DB(sql);
    });
});

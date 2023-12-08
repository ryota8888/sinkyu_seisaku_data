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
    fil_list[index] = document.querySelectorAll(`#${id} .check_item`);
    fil_list_act[index] = document.querySelectorAll(`#${id} .check_item.active`);
});

const sql_memory = {
    role: 'role in (1,2)',
    filter: '(rarity in(1,2,3)) AND (attack in(1,2,3,4)) AND (defense in(1,2,3,4)) AND (class in(1,2,3,4,5)) AND (position in(1,2,3)) AND (school in(1,2,3,4,5,6,7,8,9,10,11))',
    sort: 'f_name',
    order: ''
}
const img_list = document.querySelector('.list_content_bg ul')
const ADtoggle_btn = document.querySelector('.list_header .content_container .item4');

let select = `name_alpha,f_name,${sql_memory.sort} AS caption`;
let from = `char_info`;
let where = `${sql_memory.role} AND ${sql_memory.filter} ORDER BY ${sql_memory.sort}`;

let sql = `SELECT ${select} FROM ${from} WHERE ${where}`;

const connect_DB = (data) => {
    url = '../../php/data_push.php';
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
            // console.log('--検索結果--');
            res.forEach(item => {
                img_list.innerHTML += `<li><a href="https://bluearchive.wikiru.jp/?${item.f_name}" target="_blank" rel="noreferrer noopener" class="char_img img_click ${item.name_alpha}"></a><p class="caption">${item.caption}</p></li>`;
            });
        })
        .catch(error => {
            //エラーメッセージ表示
            img_list.innerHTML = '<li class="message_box"><div class="error_message">問題が発生したため、検索に失敗しました。<br>ページのリロードをお試しください。<br>もしリロードをしても解決しなかった場合、<a href="#">バグ報告タブ</a>にてご報告いただけますと幸いです。</div></li>';
        });
}

const pushArray = (item) => {
    let retrunReq = [];
    item.forEach(nestItem => {
        retrunReq.push(nestItem.dataset.value);
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
            fil_list_act[index] = document.querySelectorAll(`#${id} .check_item.active`);
        });

        fil_list_act.forEach((actItem, index) => {  //fil_list_actの数まわす
            if (actItem.length) {  //アクティブ状態のアイテムがあるときのみ実行
                request[index] = [];
                request[index] = pushArray(actItem);  //各actItemのアクティブになっている数まわす
            }
        });

        //SQL文作成
        let whereElem = [];
        request.forEach((array, index) => {
            whereElem[index] = ` (${filID[index]} in(`;   //閉じかっこは次で入れる。
            whereElem[index] += `${array.join(',')}))`;   //配列をカンマ区切りで出力
        });
        sql_memory.filter = whereElem.join(' AND');

        where = `${sql_memory.role} AND ${sql_memory.filter} ORDER BY ${sql_memory.sort} ${sql_memory.order}`;
        sql = `SELECT ${select} FROM ${from} WHERE ${where}`;
        connect_DB(sql);
    });
});
//フィルターsqlリセット
fil_reset.addEventListener('click', () => {
    sql_memory.filter = '1';
    where = `${sql_memory.role} ORDER BY ${sql_memory.sort} ${sql_memory.order}`;
    sql = `SELECT ${select} FROM ${from} WHERE ${where}`;
    console.log(sql);
    connect_DB(sql);
});

// ソートsql問い合わせ
sort_item.forEach(s_item => {
    s_item.addEventListener('click', () => {
        sql_memory.sort = s_item.dataset.value;
        select = `name_alpha,f_name,${sql_memory.sort} AS caption`;
        from = `char_info`;
        where = `${sql_memory.role} AND ${sql_memory.filter} ORDER BY ${sql_memory.sort} ${sql_memory.order}`;

        if (s_item.classList.contains('join')) {
            select = `name_alpha,f_name,joinTable.name AS caption`;
            from = `char_info INNER JOIN ${sql_memory.sort}_tb AS joinTable ON ${sql_memory.sort} = joinTable.id`;

            if (sql_memory.sort == 'town' || sql_memory.sort == 'outdoor' || sql_memory.sort == 'indoor') {
                from = `char_info INNER JOIN aptitude_tb AS joinTable ON ${sql_memory.sort} = joinTable.id`;
            }
        }
        sql = `SELECT ${select} FROM ${from} WHERE ${where}`;
        console.log(sql);
        connect_DB(sql);
    });
});
//ソートsqlリセット
sort_reset.addEventListener('click', () => {
    sort_item.forEach(s_item => {
        if (s_item.classList.contains('active')) {
            console.log(s_item.dataset.value);
            sql_memory.sort = s_item.dataset.value;
        }
    });
    select = `name_alpha,f_name,${sql_memory.sort} AS caption`;
    from = `char_info`;
    where = `${sql_memory.role} AND ${sql_memory.filter} ORDER BY ${sql_memory.sort} ${sql_memory.order}`;

    sql = `SELECT ${select} FROM ${from} WHERE ${where}`;

    connect_DB(sql);
});

// ロールボタンのsql問い合わせ
role_btn.forEach(r_btn => {
    r_btn.addEventListener('click', () => {
        let role_num = r_btn.dataset.value;
        role_num != 0 ? sql_memory.role = `role in (${role_num})` : sql_memory.role = 'role in (1,2)';

        where = `${sql_memory.role} AND ${sql_memory.filter} ORDER BY ${sql_memory.sort} ${sql_memory.order}`;
        sql = `SELECT ${select} FROM ${from} WHERE ${where}`;
        connect_DB(sql);
    });
});

// 昇降ボタンクリック
ADtoggle_btn.addEventListener('click', () => {
    ADtoggle_btn.classList.toggle('DESC');
    if (ADtoggle_btn.classList.contains('DESC')) {
        ADtoggle_btn.innerHTML = '<p class="centering">降</p>';
        sql_memory.order = 'DESC';
    } else {
        ADtoggle_btn.innerHTML = '<p class="centering">昇</p>';
        sql_memory.order = '';
    }
    where = `${sql_memory.role} AND ${sql_memory.filter} ORDER BY ${sql_memory.sort} ${sql_memory.order}`;
    sql = `SELECT ${select} FROM ${from} WHERE ${where}`;
    connect_DB(sql);
});
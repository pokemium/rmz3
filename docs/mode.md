# Mode

The 4 bytes from `02030B60` represent the mode of the game.

`02030B60` is idx for `083860a0`.

```
00: 1,2,3 それ以外 (0x08386170)
  00: "はじめから"
  01: "つづきから"
  02: ??
  03: フィールド(4)移行前の前処理
  04: フィールド (0x083861b0)
    00: ニュートラル状態(ゼロを自由に動かせる状態)
    01: セーブ関連
    02: ??
    03: セルヴォとの会話中
    04: ??
    05: ミッション選択中
    06: シエルのコンピュータ操作中
    07: 水没した図書館の検索マシン操作中
    08: ??
    09: "ミサイル工場"直後のシエルとの会話
    10: ??
    11: ??
    12: ??
    13: ??
  05: メニュー画面を開くとき
  06: メニュー画面を閉じるとき
  07: サイバー空間へ入る・出る
  08: ??
  09: ??
  10: ??
  11: ??
  12: ??
  13: ??
  14: ??
  15: ??
01: メニュー画面 (0x083862b4)
  02: ニュートラル状態 (0x083862a4)
    00: メインメニュー画面
    01: EXスキル画面
    02: キーコンフィグ画面
    03: エルフ画面
02: セルヴォ解析中 (0x08386a78)
  02: ニュートラル状態 (0x083864ac)
    00: ??
    01: ??
    02: ??
03: ミニゲーム中 (0x08386ab4)
  00: ゼロ
  01: シエル
  02: コピーX
  03: ハルピュイア
  04: ファーブニル
  05: レヴィアタン
  06: ファントム
```
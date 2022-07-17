typedef enum GraphicEffect { /* 0x0202ffb4 */
                             NONE = 0,
                             RETURN = 1 /* 通常の画面に戻る */,
                             BLACKOUT = 2 /* 徐々に真っ暗になる */,
                             WHITEOUT = 4 /* 徐々に真っ白になる */,
                             Z = 8 /* ZマークとSEと共に画面真っ暗に */
} GraphicEffect;

typedef enum MissionDoneFlags { /* ステージのフリーラン可能フラグ、ミッション一覧の終了状態にも関連 */
                                NONE = 0,
                                SPACE_CRAFT = 2,
                                VOLCANO = 4,
                                OCEAN_HIGHWAY_RUINS = 8,
                                REPAIR_FACTORY = 16,
                                OLD_LIFE_SPACE = 32,
                                FIRST4 = 60 /* 最初の4ミッション */,
                                MISSILE_FACTORY = 64,
                                MEDIUM3 = 896 /* 中間3ミッション */,
                                AREA_X2 = 1024,
                                LATER4 = 30720 /* 後半4ミッション */,
                                SUB_ARCADIA = 32768
} MissionDoneFlags;

typedef enum SoundID32 {
  NONE = 0,
  UNK_01 = 1,
  YES = 2 /* 決定音 */,
  NO = 3 /* キャンセル音 */,
  UNK_04 = 4,
  UNK_05 = 5,
  NOTIFICATION = 6 /* EXスキル取得とかの通知音 */,
  WALL_JUMP = 7 /* 壁蹴り */,
  DASH_1 = 8,
  DASH_2 = 9 /* 壁ずりずりかも？ */,
  UNK_0a = 10,
  UNK_0b = 11,
  UNK_0c = 12,
  LADDER = 13 /* はしご(歩行音でも使われてる？) */,
  UNK_0e = 14 /* シークレットディスク解析？ */,
  UNK_0f = 15,
  SLASH_ROLLING = 16,
  SLASH_UP = 17 /* 3段切り変化(切り上げ、衝撃波) */,
  REFLECT_LASER = 18,
  TENRETSUJIN = 19 /* ザンエイダンも */,
  REPPUGEKI = 20 /* ﾚｯﾌﾟｳｹﾞｷ */,
  Z_SABER = 21,
  Z_BUSTER = 22,
  CHARGE_1 = 23,
  CHARGE_2 = 24,
  CHARGE_SAVER_VOICE = 25,
  CHARGE_BUSTER = 26,
  CHARGE_SHIELD_VOICE = 27 /* シールドブーメラン？歯切れが良い */,
  UNK_1c = 28 /* シークレットディスク解析音に似ているが高い */,
  CUTSCENE = 29 /* カットシーンから出る時の音(例: コピーXとハルピュイアのミサイルの会話) */,
  MISSION_VOICE = 30 /* ﾐｯｼｮﾝ! */,
  HP_RECOVER = 31,
  SUBTANK_RECOVER = 32,
  UNK_21 = 33,
  GAIN_ECRYSTAL = 34,
  USE_ELF = 35,
  GAIN_SD = 36 /* シークレットディスク取得 */,
  TIME_ELF = 37 /* ストパーラ系 */,
  TIME_ELF_HURRY = 38 /* ストパーラ系が残り時間少なくなった時 */,
  UNK_27 = 39 /* バーストショット候補1 */,
  ELF_UPGRADE = 40 /* エルフを成長させたときの音 */,
  ENEMY_DAMAGE = 41 /* 雑魚的にバスター(豆)を当てた時の音 */,
  EXPLODE = 42,
  BLOCKED = 43 /* ガード判定のあるところとかに攻撃した時の音 */,
  ENEMY_SHOT = 44 /* 雑魚敵が豆打ってくる時の音 */,
  ENEMY_BOMB = 45 /* プロペラキャノンが爆弾落とす時とか */,
  CAUTION = 46,
  UNK_2f = 47,
  BOSS_EXPLODE = 48 /* ボスが爆発するときの音 */,
  UNK_31 = 49,
  IN_SEA = 50 /* 泡の音がなってた */,
  MENU_SLIDE = 51 /* STARTメニューでLR押した時 */,
  UNK_34 = 52,
  UNK_35 = 53 /* バーストショット候補2 */,
  RECOIL_ROD = 54 /* 普通のリコイルロッド攻撃 */,
  CHARGE_RECOIL = 55,
  THOUSAND = 56 /* サウザンドスラッシュ */,
  BEFORE_BOSS_EXPLODE = 57,
  ELECTRIC_PANTHEON = 58 /* パンテオンガーディアンの攻撃音 */,
  ELECTRIC_SNAKECORD = 59 /* スネーケーブルのびりびり音 */,
  ELECTRIC = 60 /* 図書館の電気びりびり音 */,
  FLAME = 61 /* 炎やられ？ */,
  FREEZE = 62 /* ブリザードアローでなる */,
  UNK_3f = 63,
  ICE = 64 /* 氷やられ？ */,
  UNK_41 = 65,
  WOOOOOO = 66 /* ブリザッグスタグロフの攻撃時のボイス */,
  BLIZZACK_BOMB = 67 /* ツインフローズンボム */,
  BLIZZACK_BLIZARD = 68 /* ブリザード */,
  COPYX_TRANSFORM = 69 /* コピーXがアーマー装着完了 */,
  COPYX_YA = 70 /* ﾔｯ! */,
  COPYX_GUA = 71 /* コピーXがダメージ食らった時の声 */,
  UNK_48 = 72,
  UNK_49 = 73 /* コピーXの電気バスター */,
  COPYX_EX = 74 /* ﾓｳﾕﾙｻﾝ! */,
  COPYX_RECOVER = 75 /* コピーXの回復音 */,
  UNK_4c = 76,
  UNK_4d = 77,
  HANU_VOICE_1 = 78 /* ｳｷｯ! */,
  HANU_VOICE_2 = 79 /* 如意棒伸ばす時 ｳｷｷ! */,
  HANU_VOICE_3 = 80 /* 突進してくるときの音 ﾑｯｷｰ! */,
  HANU_TAILFIRE_SE = 81 /* テイルファイア */,
  HANU_REFLECT = 82 /* 突進が反射する時の音 */,
  ANUBIS_MAGIC = 83 /* アヌビステップが地形変える時？ */,
  ANUBIS_BOOMERANG = 84 /* ステッキのブーメラン */,
  UNK_55 = 85,
  UNK_56 = 86,
  SILENCE_57 = 87 /* 無音になる */,
  UNK_58 = 88,
  UNK_59 = 89,
  CIEL_SCREAM = 90 /* ｷｬｰ! */,
  DEATHTANZ_KIZANDEYARU = 91 /* ｷｻﾞﾝﾃﾞﾔﾙ */,
  DEATHTANZ_VOICE_5c = 92 /* ﾋｯ-w */,
  DEATHTANZ_VOICE_5d = 93 /* ﾊｰｯw */,
  DEATHTANZ_VOICE_5e = 94 /* ﾎﾞﾜｯw */,
  DEATHTANZ_EX = 95 /* ﾖｹﾝﾅﾖ! */,
  DEATHTANZ_DAMAGE = 96 /* ｷﾞｪw */,
  DEATHTANZ_DEATH = 97 /* ﾃﾞｭﾊw */,
  UNK_62 = 98,
  UNK_63 = 99,
  UNK_64 = 100,
  CHILDRE_VOICE_1 = 101 /* ｯﾊﾊ! */,
  UNK_66 = 102,
  UNK_67 = 103,
  CHILDRE_NOROMA = 104 /* ﾉﾛﾏ~w */,
  CHILDRE_ORAORA = 105 /* ｵﾗｵﾗ~w ミサイル打つ時 */,
  CHILDRE_YAHHH = 106 /* ﾔｰ!! */,
  UNK_6b = 107,
  CHILDRE_KURAE = 108 /* ｸﾗｴｰ! */,
  CHILDRE_DAMAGE = 109 /* ｩｸﾞｧ! */,
  CHILDRE_DEATH = 110 /* ｷｬｰ! */,
  BLAZIN_VOICE_6f = 111 /* ｯﾌﾝ! */,
  BLAZIN_VOICE_70 = 112 /* ｩﾗｧ! */,
  UNK_71 = 113 /* 無音になる */,
  BLAZIN_MOETEKIESARE = 114 /* ﾓｴﾃｷｴｻﾚ! EX技 */,
  BLAZIN_TRANSFORM = 115 /* ﾃﾞｩｳｱ! */,
  UNK_74 = 116,
  UNK_75 = 117,
  UNK_76 = 118 /* 無音 */,
  UNK_77 = 119,
  UNK_78 = 120,
  VOLTEEL_TRANSFORM = 121 /* ｶｸｺﾞｼﾛ! */,
  VOLTEEL_LAUGH = 122 /* ﾋﾋﾋﾋﾋﾋw */,
  VOLTEEL_VOICE_7b = 123,
  VOLTEEL_HAGH = 124 /* ﾊｧ?w 穴から出てくる時 */,
  VOLTEEL_KOWARERO = 125 /* ｺﾜﾚﾛ-w */,
  VOLTEEL_KOITSUME = 126 /* ｺｲﾂﾒw */,
  VOLTEEL_DODA = 127 /* ﾄﾞｳﾀﾞｰw */,
  UNK_80 = 128,
  VOLTEEL_DAMAGE = 129,
  VOLTEEL_DEATH = 130 /* ﾇｷﾞｬw */,
  HELLBAT_TRANSFORM = 131 /* ﾒｻﾞﾜﾘﾀﾞ! */,
  HELLBAT_LAUGH = 132 /* ﾌｯﾌﾌﾌﾌﾌﾌw */,
  HELLBAT_SHIMOBEYO = 133 /* ｼﾓﾍﾞﾖ! コウモリ攻撃 */,
  HELLBAT_SHIHUKUNO_NEYO = 134 /* ｼﾌｸﾉﾈﾖ! */,
  HELLBAT_HAGH = 135 /* ﾊｯ 床に降りて電撃4連続 */,
  HELLBAT_EX_VOIVE = 136 /* ﾕﾙｼｦｺｳﾉﾃﾞｽ... */,
  HELLBAT_EX_SOUND = 137 /* EX技の発射音 */,
  HELLBAT_DAMAGE = 138,
  HELLBAT_DEATH = 139,
  GLACIERLE_TRANSFORM_SE = 140 /* 変身時になるｶﾞﾝッって音 */,
  GLACIERLE_TRANSFORM = 141 /* 砂漠でR */,
  GLACIERLE_VOICE_8e = 142,
  UNK_8f = 143,
  GLACIERLE_VOICE_90 = 144 /* ﾝﾝﾇｳｳﾝ! */,
  UNK_91 = 145 /* ブリザックの着地音 */,
  GLACIERLE_BATSU_WO_UKEYO = 146 /* ﾊﾞﾂｦｳｹﾖ! */,
  UNK_93 = 147,
  SILENCE_94 = 148 /* 無音 */,
  GLACIERLE_SHIKEI = 149 /* 死刑であーる */,
  UNK_96 = 150,
  GLACIERLE_DAMAGE = 151,
  GLACIERLE_DEATH = 152,
  TENSOU_VOICE = 153 /* ﾃﾝｿｳ! */,
  TENSOU_SE = 154 /* レジスタンスベースの転送 */,
  TENSOU_BACK = 155 /* 帰還の転送や、他キャラのテレポート */,
  STAGE_DOOR = 156 /* ステージ内の扉の開く音 */,
  UNK_9d = 157,
  UNK_9e = 158,
  UNK_9f = 159,
  LIFT = 160 /* エレベータの移動音 */,
  BGM_GUARDER_ROOM = 161 /*  ガーダールーム */,
  BGM_INTRO = 162 /* ネオ・アルカディアマーチ */,
  BGM_INTRO_STARSHIP = 163 /* 忌まわしき箱舟 */,
  BGM_X = 164 /* エックスのテーマ */,
  BGM_OMEGA = 165 /* 追放されしもの-オメガ */,
  BGM_WEIL = 166 /* 怨讐の科学者 */,
  BGM_ANTAN = 167 /* 暗澹 */,
  BGM_OMEGA_MISSILE = 168 /* オメガミサイル */,
  BGM_BABY_ELF = 169 /* クリエとプリエ */,
  BGM_BREAKOUT = 170 /* ブレークアウト */,
  BGM_VOLCANO = 171 /* ボルケノ */,
  BGM_WATERCITY = 172 /* ウォーター・シティ */,
  BGM_REBORN_FACTORY = 173 /* リボーン・メカニクス */,
  BGM_OLD_LIFE_SPACE = 174 /* オールド・ライフ・スペース */,
  BGM_FINALCOUNTDOWN = 175 /* ファイナルカウントダウン */,
  BGM_ENDLESS_BATTLE3 = 176 /* 果てしなき戦いへ3 */,
  BGM_FOREST = 177 /* サンド・トライアングル2 */,
  BGM_SENNYU = 178 /* 潜入2 */,
  BGM_NEOARCADIA3 = 179 /* ネオアルカディア3 */,
  BGM_ENERGY_FACTORY = 180 /* 冷めた微笑 */,
  BGM_SETSUGEN = 181 /* パウダートレイル */,
  BGM_LIBRARY = 182 /* 水没した図書館 */,
  BGM_HIGHSPEED_LIFT = 183 /* ハイスピードリフト */,
  BGM_UNDER_ARCADIA = 184 /* ヘイルズゲイト */,
  BGM_LAST_STAGE = 185 /* 怨讐の科学者- Stage Version - */,
  BGM_RBASE = 186 /* プリズマテック */,
  BGM_OMEGA_BATTLE = 187 /* オメガバトル */,
  BGM_BOSS_BATTLE = 188 /* スクラップ・ビート */,
  BGM_MIDDLE_BOSS = 189 /* クラッシュ3 */,
  BGM_RESULT = 190 /* リザルト3 */,
  BGM_TITLE = 191 /* タイトル3 */,
  BGM_OMEGA2_BATTLE = 192 /* ジャッジメントデイ */,
  BGM_ZERO_RETURN = 193 /* ゼロ・リターン */,
  BGM_OMEGAZERO_APPEAR = 194 /* 魔神降臨 */,
  BGM_CANNON_BALL = 195 /* キャノンボール */,
  BGM_EPILOGUE = 196 /* あなたはゼロ */,
  BGM_ENDING = 197 /* 紅き伝説 */,
  UNK_c6 = 198,
  UNK_c7 = 199,
  UNK_c8 = 200 /* カットシーン？ */,
  CUBIT_TRANSFORM = 201 /* ﾎｰﾎｯﾎｯﾎ! */,
  CUBIT_JUMP = 202 /* ﾊｯ! */,
  UNK_cb = 203,
  CUBIT_WARP = 204 /* ﾐｷﾚﾙ? */,
  CUBIT_ONIBI_CHARGE = 205 /* ﾊｧｰ! */,
  CUBIT_ONIBI = 206 /* ｲﾔｯ */,
  CUBIT_KAEN_GURUMA = 207 /* ｶｴﾝｸﾞﾙﾏ! */,
  CUBIT_FLAME_RAIN = 208 /* ﾁﾘﾅｻｲ! */,
  CUBIT_DAMAGE = 209,
  CUBIT_DEATH = 210,
  TRETISTA_VOICE_d3 = 211,
  TRETISTA_GRAWL = 212 /* ｺﾞﾙﾙｧ! ジャンプ時も */,
  TRETISTA_VOICE_d5 = 213,
  TRETISTA_HELL_BOUNCERS = 214 /* ﾔｯﾁﾏｴｨ! */,
  UNK_d7 = 215,
  TRETISTA_VOICE_d8 = 216,
  TRETISTA_VOICE_d9 = 217,
  TRETISTA_GAS = 218 /* ブレスガスのSE */,
  TRETISTA_VOICE_db = 219,
  TRETISTA_DAMAGE = 220,
  TRETISTA_DEATH = 221,
  UNK_de = 222,
  BGM_DARKELF = 223 /* ダークエルフ */,
  UNK_e0 = 224,
  UNK_e1 = 225,
  UNK_e2 = 226,
  PAQUA_MOD_VOICE_e3 = 227,
  PAQUA_MOD_VOICE_e4 = 228,
  PAQUA_MOD_VOICE_e5 = 229,
  PAQUA_MOD_LASER = 230 /* スィープレーザー */,
  OMEGA1_GROWL = 231 /* オメガ第一形態の唸り声 */,
  OMEGA1_VOICE_e8 = 232,
  OMEGAZERO_VOICE_e9 = 233,
  OMEGAZERO_VOICE_ea = 234,
  OMEGAZERO_VOICE_eb = 235,
  OMEGAZERO_VOICE_ec = 236,
  OMEGAZERO_VOICE_ed = 237,
  OMEGAZERO_CHARGE_SABER = 238 /* ﾄﾞﾘｬｰ! */,
  OMEGAZERO_RYUENJIN = 239 /* ﾊｧｯ! */,
  OMEGAZERO_REKKOHA = 240 /* ｷｴｻﾚ! */,
  OMEGAZERO_MESSENKOU = 241 /* ﾎﾛﾋﾞﾖ! */,
  OMEGAZERO_DAMAGE_f2 = 242,
  OMEGAZERO_MESHIA = 243 /* 我はメシアなり！ハーハッハッハ！ */,
  FEFNIR_DAMAGE = 244,
  FEFNIR_ATK = 245 /* ｵﾘｬ! */,
  LEVIATHAN_DAMAGE = 246,
  LEVIATHAN_ATK = 247,
  HARPUIA_DAMAGE = 248,
  HARPUIA_ATK = 249,
  PHANTOM_START = 250 /* 今一度、勝負！ */,
  PHANTOM_ZAN = 251 /* 斬！ 闇駆け */,
  PHANTOM_SHURIKEN = 252 /* 投！ 螺旋凶車 */,
  PHANTOM_RETSU = 253 /* 列！ 朧舞・空蝉 */,
  PHANTOM_UTSUSEMI = 254 /* 空蝉！ 刃二重 */,
  PHANTOM_DAMAGE = 255,
  PHANTOM_SE = 256 /* マキビシ？が地面に当たる音 */,
  UNK_101 = 257,
  UNK_102 = 258 /* ヘリコプター？ */,
  UNK_103 = 259,
  UNK_104 = 260,
  UNK_105 = 261 /* 火山の砲弾の弾が地面に落ちる音？ */,
  UNK_106 = 262,
  SHELL_CRAWLER = 263 /* シェルクローラーの弾 */,
  UNK_108 = 264,
  UNK_109 = 265,
  UNK_10a = 266,
  UNK_10b = 267 /* ベルトコンベアみたい */,
  UNK_10c = 268,
  UNK_10d = 269,
  RBASE_TYPING = 270 /* オペレータの出す音 */,
  RBASE_PRE_DOOR = 271 /* ドアが開く前の音 */,
  UNK_110 = 272,
  UNK_111 = 273 /* ドアが開く？ */,
  UNK_112 = 274,
  UNK_113 = 275,
  BABY_ELF_LAUGH = 276 /* ｱﾊｯ */,
  BABY_ELF_LAUGH_2 = 277 /* ｱﾊﾊｯ */,
  BABY_ELF_SE_116 = 278,
  BABY_ELF_SE_117 = 279,
  BABY_ELF_SE_118 = 280,
  BABY_ELF_DEATH = 281,
  UNK_11a = 282,
  OMEGAZEOR_APPEAR = 283 /* オメガゼロが姿を表す際の光の音 */,
  UNK_11c = 284,
  UNK_11d = 285,
  CAMERA_BEEP = 286 /* 監視カメラとかに発見された時の音 */,
  UNK_11f = 287,
  UNK_120 = 288,
  UNK_121 = 289,
  UNK_122 = 290,
  SEA_LEVEL = 291 /* 海面 */,
  UNK_124 = 292 /* 電気？ */,
  TENSOU_BEEP = 293 /* 転送時のアラート */,
  UNK_126 = 294,
  UNK_127 = 295,
  BLAZIN_FIRE_SHOWER_SE = 296,
  UNK_129 = 297,
  NEOARCADIA_RINGTONE = 298 /* ネオアルカディアから通信があったときの音 */,
  UNK_12b = 299,
  OMEGA1_LASER_SE = 300 /* オメガレーザー 第一形態が3回弾打つやつ */,
  OMEGA1_HOOP_SE = 301 /* フープショット */,
  UNK_12e = 302,
  UNK_12f = 303,
  OMEGA2_BUSTER_SE_1 = 304 /* エクシードバスター(チャージ) */,
  OMEGA2_SE_131 = 305,
  OMEGA2_SE_132 = 306,
  OMEGA2_SPARK_CHASER_SE = 307 /* スパークチェイサー */,
  OMEGA2_LASER = 308 /* トリプルレーザー */,
  OMEGA2_BUSTER_SE_2 = 309 /* エクシードバスター(発射中) */,
  BGM_EXTRA = 310 /* ラボ-システマ・シエル */,
  UNK_137 = 311,
  UNK_138 = 312,
  UNK_139 = 313 /* コンピューター？ */,
  UNK_13a = 314,
  OMEGAZERO_DAMAGE_13b = 315 /* 0xf2と同じボイス？ */,
  CIEL_ZERO_CALL = 316 /* ｾﾞﾛ...ｾﾞﾛ... */,
  ORIGINAL_X_APPEAR = 317 /* エックスがホログラムになるときの音 */,
  UNK_13e = 318,
  UNK_13f = 319,
  ROCK_FALL_SE = 320 /* 落石音 */,
  UNK_141 = 321,
  UNK_142 = 322,
  UNK_143 = 323,
  UNK_144 = 324,
  CLAVEKER_ATK = 325 /* 蜘蛛の出す弾SE */,
  GALLISNI_ATK = 326 /* ガリスニー(センサーに引っかかると四方からくる奴) */,
  UNK_147 = 327,
  RBASE_DOOR_OPEN = 328,
  RBASE_DOOR_CLOSE = 329,
  TELEPORT = 330 /* ファントムとかと戦う時に入るテレポーター */,
  BGM_MISSION_INSTRUCTION = 331 /* ステージ来た時にオペレータからの指示を受けるときの */,
  UNK_14c = 332,
  UNK_14d = 333,
  FLOPPER_EXPLODE = 334,
  UNK_14f = 335
} SoundID32;

typedef enum StageID32 {
  NONE = 0,
  SPACE_CRAFT = 1 /* 壊れた宇宙船 */,
  VOLCANO_BASE = 2 /* アグニス火山の基地 */,
  OCEAN_HIGHWAY_RUINS = 3 /* 海上のハイウェイ跡地 */,
  REPAIR_FACTORY = 4 /* 兵器再生工場 */,
  OLD_LIFE_AREA = 5 /* 旧居住区 */,
  MISSILE_FACTORY = 6 /* ミサイル工場 */,
  TWILIGHT_DESERT = 7 /* 夕闇の砂漠 */,
  ANATRE_FOREST = 8 /* アナトレーの森 */,
  FRONTLINE_ICE_BASE = 9 /* 氷の前線基地 */,
  AREA_X2 = 10 /* エリアX-2 */,
  E_FACILITY = 11 /* エネルギー施設 */,
  SNOWY_PLAINS = 12 /* 雪原 */,
  SUNKEN_LIBRARY = 13 /* 水没した図書館 */,
  GIANT_ELEVATOR = 14 /* 巨大エレベーター */,
  SUB_ARCADIA = 15 /* アンダー・アルカディア */,
  WEILS_RESEARCH_LABO = 16 /* バイル研究所 */,
  BASE = 17 /* レジスタンスベース */
} StageID32;

typedef enum ZeroColor {
  NEUTRAL = 0,
  LIGHT = 1,
  ABSORBER = 2,
  THUNDER = 3,
  FLAME = 4,
  ICE = 5,
  PROTO = 6,
  ULTIMATE = 7,
  OMEGA = 8
} ZeroColor;
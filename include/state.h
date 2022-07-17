/* 02037c6a */
typedef enum Flags_02037c6a {
  NONE = 0,
  DISPLAY = 1 /* ゼロを表示するか */,
  MAYBE_GHOST = 4 /* 当たり判定が消える */,
  DIRECTION_RIGHT = 16 /* ゼロの攻撃向き(実際の向き) */
} Flags_02037c6a;

typedef enum Flags_03005707 { NONE = 0, STOPPED = 128 } Flags_03005707;

typedef enum MotionID {
  NEUTRAL = 0,
  UNK_01 = 1,
  WALK = 2,
  DASH = 3,
  JUMP = 4,
  BUSTER = 8,
  TripleSlash1 = 14,
  TripleSlash2 = 15,
  TripleSlash3 = 16
} MotionID;

/* 02037caa */
typedef enum ImageEffect2 { HIDDEN = 0, H_FLIP = 16, V_FLIP = 32 } ImageEffect2;

typedef u8 *Beats;

typedef struct Beat2 Beat2, *PBeat2;

typedef u8 DDP[24];

typedef u8 Hitbox[24];

typedef uint uint32_t;

typedef struct ZeroDetailState ZeroDetailState, *PZeroDetailState;

/* SoundIDの2バイト版 */
typedef enum SoundID {
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
} SoundID;

typedef enum Weapon { BUSTER = 0, SABER = 1, RECOIL = 2, SHIELD = 3, NONE = 255 } Weapon;

typedef enum SaberActions {
  TRIPLE_1 = 0,
  TRIPLE_2 = 1,
  TRIPLE_3 = 2,
  SLASH = 3,
  DASH_SLASH = 4,
  AIR_SLASH = 5,
  UNK_06 = 6,
  UNK_07 = 7,
  CHARGE_ATK_08 = 8,
  CHARGE_ATK_09 = 9,
  CHARGE_ATK_0a = 10,
  CHARGE_ATK_0b = 11,
  UNK_0c = 12,
  UNK_0d = 13,
  UNK_0e = 14,
  UNK_0f = 15,
  SPLIT_OR_THROW_10 = 16 /* テンレツジン */,
  SPLIT_OR_THROW_11 = 17 /* ザンエイダン */,
  GALE_12 = 18 /* レップウゲキ */,
  GALE_13 = 19 /* レップウゲキ */,
  JUMP_ROLLING = 20,
  DASH_ROLLING = 21,
  SMASH_16 = 22,
  SMASH_17 = 23
} SaberActions;

/* 0x02037da8 */
typedef enum Dash { NONE = 0, DASH = 1, SHADOW = 2 } Dash;

typedef enum ElfID {
  MARTINA = 0,
  MILVY = 1,
  ELPHY = 2,
  SYLPHY = 3,
  RILPHY = 4,
  ARTAN = 5,
  ZICTAN = 6,
  MOTT = 7,
  DOTT = 8,
  CURIPH = 9,
  LURIPH = 10,
  SURIPH = 11,
  TIRIPH = 12,
  YURIPH = 13,
  BERIPH = 14,
  WILIPH = 15,
  CYLIPH = 16,
  SNOQ = 17,
  MATHIQ = 18,
  MIYAQ = 19,
  AJIQ = 20,
  DOBUQ = 21,
  MULAQ = 22 /* エネルギーを全回復 */,
  MAILLA = 23 /* エネルギー弾をライフ１目盛り回復に還元 */,
  MIULLA = 24 /* エネルギー弾をライフ１目盛り回復に還元 */,
  CLOPPE = 25 /* コロップ、ライフエネルギー(小)をばら撒く */,
  SLOPPE = 26 /* ソロップ、ライフエネルギー(小)をばら撒く */,
  PUTITE = 27 /* 棘やマグマの一撃死をダメージに軽減 */,
  BALETTE = 28,
  MAYA = 29,
  KWAPPA = 30,
  GAMBUL = 31 /* ヒットバック緩和 */,
  BIRAID = 32,
  BIRLEAF = 33,
  PITAPAH = 34,
  PITAPUH = 35,
  BEETACK = 36,
  BEENIPE = 37,
  ARCHIM = 38 /* 援護爆撃 */,
  ARCHIL = 39 /* 援護爆撃 */,
  BYSE = 40,
  DYLPHINA = 41,
  LIZETUS = 42,
  COTTUS = 43,
  SHUTHAS = 44,
  MALTHAS = 45,
  ILETHAS = 46,
  ENETHAS = 47,
  BUSRAS = 48,
  SABRAS = 49,
  RODERAS = 50,
  BOOMERAS = 51,
  CLOKKLE = 52 /* クロクル */,
  METORAS = 53,
  METORIKA = 54,
  METORPH = 55,
  METELLA = 56,
  METEROM = 57,
  KYNITE = 58,
  SURNITE = 59,
  TENITE = 60,
  STOPALLA = 61,
  STOPINA = 62,
  STOPULE = 63,
  STOPETA = 64,
  STOPOSA = 65,
  HANMARGA = 66,
  HANMARJI = 67,
  HANMARBO = 68,
  AINA = 69,
  ACOOL = 70,
  ACHOON = 71,
  ANATER = 72,
  AWARNE = 73,
  NONE = 255
} ElfID;

typedef enum ElementID { NEUTRAL = 0, THUNDER = 1, FLAME = 2, ICE = 3 } ElementID;

typedef enum HeadChip { NEUTRAL = 0, AUTO_RECOVER = 1, AUTO_CHARGE = 2, QK_CHARGE = 3 } HeadChip;

typedef enum BodyChip {
  NEUTRAL = 0,
  LIGHT = 1,
  ABSORBER = 2,
  THUNDER = 3,
  FLAME = 4,
  ICE = 5,
  PROTO = 6,
  ALTIMATE = 7
} BodyChip;

typedef enum FootChip {
  NEUTRAL = 0,
  SPLASH_JUMP = 1,
  DOUBLE_JUMP = 2,
  SHADOW = 4,
  QUICK = 8,
  SPIKE = 16,
  FROG = 32,
  ULTIMA = 64
} FootChip;

typedef enum ExSkill {
  LASER = 1,
  VSHOT = 2,
  BURST = 4,
  BLIZZ = 8,
  GALE = 16,
  SMASH = 32,
  SPLIT = 64 /* テンレツジン */,
  THROW = 128 /* ザンエイダン */,
  THOUSAND = 256,
  SOUL = 512,
  SWEEP = 1024,
  ORBIT = 2048
} ExSkill;

typedef enum ExtraZeroColor { BODY = 0, PROTO = 1, ALTIMATE = 2 } ExtraZeroColor;

/* Button press period, size is 1byte. */
typedef enum ChargeState { NONE = 0, SEMI = 40, FULL = 120, MAX = 200 } ChargeState;

struct Coord {
  s32 x;
  s32 y;
};

struct Object {
  DDP *ddp;       /* DDP = 敵から受けるダメージのポインタ */
  Hitbox *hitbox; /* 例: 0x0835e89c */
  struct Coord *coord;
  undefined field3_0xc;
  undefined field4_0xd;
  undefined field5_0xe;
  undefined field6_0xf;
  struct State **field7_0x10;
  struct State **field8_0x14;
  u32 field9_0x18;
  u32 field10_0x1c;
  u16 invincibleTime;
  u16 comboLevel;
  void (*fn)(struct Object *);
  uint32_t field14_0x28;
  struct GameState *field15_0x2c;
  u16 hp;
  undefined field17_0x32;
  undefined field18_0x33;
  undefined field19_0x34;
  undefined field20_0x35;
  u8 field21_0x36;
  u8 atk;
  u8 field23_0x38;
  undefined field24_0x39;
  undefined field25_0x3a;
  u8 field26_0x3b;
};

struct Beat2 {
  u8 idx1; /* tblの1つ目のidx */
  u8 idx2; /* tblの2つ目のidx */
  u8 frames;
  u8 motionFrames;
};

struct Beat {
  Beats *tbl;        /* 例: 0x085d3140 */
  struct Beat2 base; /* tblの1つ目のidx */
};

struct State { /* Base state */
  struct State *next;
  struct State *prev;
  u8 field2_0x8;
  u8 id; /* 雑魚敵を区別している 08365948 でidxとして使用 */
  enum Flags_02037c6a flags;
  enum Flags_03005707 flags2;
  u8 fnIdx; /* ショットカウンターなら 08365d08 のidx */
  u8 mode;
  u8 phase;
  u8 step;    /* 場合によっては次のmodeの予約としても使われる */
  u8 various; /* extraLifeの根拠は080be460参照 */
  u8 floor;   /* レジスタンスベースの場合、階層 */
  u8 frames;  /* 雑魚敵なら画面内 */
  u8 field13_0x13;
  void (*fn)(struct GameState *); /* 0809c8cc で処理 */
  pointer field15_0x18;
  u8 field16_0x1c;
  u8 field17_0x1d;
  enum MotionID motionID;
  u8 motionFrames;
};

struct SpriteState { /* 0x03007874 長さ32で確定 */
  u32 field0_0x0;
  pointer fn;
  struct SpriteState *p;
  struct Coord *field3_0xc;
  u32 field4_0x10;
  u8 field5_0x14;
  u8 sprBgPrio;
  enum ImageEffect2 field7_0x16;
  u8 field8_0x17;
  bool8 isRight;
  u8 isInSea;
  u8 beat; /* ゼロの鼓動に合わせて動いてる */
  u8 field12_0x1b;
  u16 field13_0x1c;
  u16 field14_0x1e;
};

struct ZeroDetailState {   /* 長さ48で確定。根拠は 0x08032274 */
  enum ElfID satelites[2]; /* 装備しているサテライトエルフ */
  undefined field1_0x2;
  undefined field2_0x3;
  u8 fusions; /* フュージョンエルフを何回使ったか */
  u8 field4_0x5;
  u16 ECrystal;
  u8 SubtankHP[4];
  enum Weapon EquippedMainWeapon;
  enum Weapon EquippedSubWeapon;
  enum ElementID EquippedElement;
  enum HeadChip EquippedHead;
  enum BodyChip EquippedBody;
  enum FootChip EquippedFoot;
  enum ExSkill EquippedExSkill;
  enum ExSkill ExSkill;
  enum Weapon UnlockedWeapon;
  enum HeadChip UnlockedHead;
  enum BodyChip UnlockedBody;
  enum FootChip UnlockedFoot;
  enum ExtraZeroColor MenuZeroColor;
  u8 field20_0x1b;
  undefined field21_0x1c;
  undefined field22_0x1d;
  undefined field23_0x1e;
  undefined field24_0x1f;
  u32 field25_0x20;
  u8 field26_0x24;
  u8 field27_0x25;
  u8 field28_0x26;
  u8 field29_0x27;
  enum ChargeState MainCharge;
  enum ChargeState SubCharge;
  undefined field32_0x2a;
  undefined field33_0x2b;
  undefined field34_0x2c;
  bool8 dying; /* 瀕死 */
  undefined field36_0x2e;
  undefined field37_0x2f;
};

struct ZeroState { /* size is 652(根拠: 08025628) */
  struct State s;
  u16 field1_0x20;
  undefined field2_0x22;
  u8 field3_0x23;
  undefined field4_0x24;
  undefined field5_0x25;
  undefined field6_0x26;
  undefined field7_0x27;
  int field8_0x28;
  undefined field9_0x2c;
  undefined field10_0x2d;
  undefined field11_0x2e;
  undefined field12_0x2f;
  undefined field13_0x30;
  undefined field14_0x31;
  undefined field15_0x32;
  undefined field16_0x33;
  struct SpriteState field17_0x34;
  struct Coord coord;
  s32 dx; /* 移動速度 */
  s32 dy; /* 落下速度 */
  undefined field21_0x64;
  undefined field22_0x65;
  undefined field23_0x66;
  undefined field24_0x67;
  undefined field25_0x68;
  undefined field26_0x69;
  undefined field27_0x6a;
  undefined field28_0x6b;
  struct Beat beatState;
  struct Object obj;
  undefined field31_0xb0;
  undefined field32_0xb1;
  undefined field33_0xb2;
  undefined field34_0xb3;
  struct ZeroDetailState d;
  undefined field36_0xe4;
  undefined field37_0xe5;
  undefined field38_0xe6;
  undefined field39_0xe7;
  u8 field40_0xe8;
  undefined field41_0xe9;
  undefined field42_0xea;
  undefined field43_0xeb;
  u8 weaponMotion;
  u8 weaponAction;
  u8 field46_0xee;
  undefined field47_0xef;
  undefined field48_0xf0;
  undefined field49_0xf1;
  undefined field50_0xf2;
  undefined field51_0xf3;
  u8 *field52_0xf4;
  undefined field53_0xf8;
  undefined field54_0xf9;
  enum SoundID sound;
  undefined field56_0xfc;
  undefined field57_0xfd;
  undefined field58_0xfe;
  undefined field59_0xff;
  struct Coord prevCoord;
  s32 field61_0x108;
  s32 unkDx;
  u16 dashSpan; /* 02037d70 */
  u8 field64_0x112[7];
  u8 isAreaChange;       /* 横方向のエリア移動(ドアとか)中に立ってる */
  bool8 doesZeroAirJump; /* ゼロが空中ジャンプをしたかどうか */
  u8 unkSeaLevel; /* これを0以外にすると海面を行き来しても水中との切り替わりエフェクト(音とか)が発生しない
                     ただしジャンプ量など内部的には切り替わってる */
  undefined field68_0x11c;
  undefined field69_0x11d;
  undefined field70_0x11e;
  u8 field71_0x11f;
  undefined field72_0x120;
  undefined field73_0x121;
  undefined field74_0x122;
  undefined field75_0x123;
  u8 field76_0x124;
  undefined field77_0x125;
  undefined field78_0x126;
  undefined field79_0x127;
  enum Weapon usingWeapon; /* ゼロが現在攻撃中の場合、その武器を示す */
  u8 busterCoolTimeFrame;
  u8 field82_0x12a;
  enum Weapon forceWeaponAtk; /* FFで何もしない */
  u8 field84_0x12c;
  enum SaberActions maybeSaberAction;
  u8 field86_0x12e[17];
  enum MotionID field87_0x13f;
  undefined field88_0x140;
  undefined field89_0x141;
  undefined field90_0x142;
  undefined field91_0x143;
  undefined field92_0x144;
  undefined field93_0x145;
  undefined field94_0x146;
  undefined field95_0x147;
  enum Dash dash;
  undefined field97_0x149;
  undefined field98_0x14a;
  undefined field99_0x14b;
  s32 unkLeft;   /* 0x08026e04 */
  s32 unkRight;  /* 0x08026e04 */
  s32 unkTop;    /* 0x08026e04 */
  s32 unkBottom; /* 0x08026e04 */
  undefined field104_0x15c;
  undefined field105_0x15d;
  undefined field106_0x15e;
  undefined field107_0x15f;
  undefined field108_0x160;
  undefined field109_0x161;
  undefined field110_0x162;
  undefined field111_0x163;
  undefined field112_0x164;
  undefined field113_0x165;
  undefined field114_0x166;
  undefined field115_0x167;
  undefined field116_0x168;
  undefined field117_0x169;
  undefined field118_0x16a;
  undefined field119_0x16b;
  undefined field120_0x16c;
  undefined field121_0x16d;
  undefined field122_0x16e;
  undefined field123_0x16f;
  undefined field124_0x170;
  undefined field125_0x171;
  undefined field126_0x172;
  undefined field127_0x173;
  undefined field128_0x174;
  undefined field129_0x175;
  undefined field130_0x176;
  undefined field131_0x177;
  undefined field132_0x178;
  undefined field133_0x179;
  undefined field134_0x17a;
  undefined field135_0x17b;
  undefined field136_0x17c;
  undefined field137_0x17d;
  undefined field138_0x17e;
  undefined field139_0x17f;
  undefined field140_0x180;
  undefined field141_0x181;
  undefined field142_0x182;
  undefined field143_0x183;
  undefined field144_0x184;
  undefined field145_0x185;
  undefined field146_0x186;
  undefined field147_0x187;
  undefined field148_0x188;
  undefined field149_0x189;
  undefined field150_0x18a;
  undefined field151_0x18b;
  undefined field152_0x18c;
  bool8 isInAir; /* ゼロが空中にいるかどうか */
  u8 field154_0x18e[100];
  undefined field155_0x1f2;
  undefined field156_0x1f3;
  undefined field157_0x1f4;
  undefined field158_0x1f5;
  undefined field159_0x1f6;
  undefined field160_0x1f7;
  undefined field161_0x1f8;
  undefined field162_0x1f9;
  undefined field163_0x1fa;
  undefined field164_0x1fb;
  undefined field165_0x1fc;
  undefined field166_0x1fd;
  undefined field167_0x1fe;
  undefined field168_0x1ff;
  undefined field169_0x200;
  undefined field170_0x201;
  undefined field171_0x202;
  undefined field172_0x203;
  undefined field173_0x204;
  undefined field174_0x205;
  undefined field175_0x206;
  undefined field176_0x207;
  undefined field177_0x208;
  undefined field178_0x209;
  undefined field179_0x20a;
  undefined field180_0x20b;
  undefined field181_0x20c;
  undefined field182_0x20d;
  undefined field183_0x20e;
  undefined field184_0x20f;
  undefined field185_0x210;
  undefined field186_0x211;
  undefined field187_0x212;
  undefined field188_0x213;
  undefined field189_0x214;
  undefined field190_0x215;
  u16 field191_0x216;
  u32 field192_0x218;
  undefined field193_0x21c;
  undefined field194_0x21d;
  undefined field195_0x21e;
  undefined field196_0x21f;
  undefined field197_0x220;
  undefined field198_0x221;
  undefined field199_0x222;
  undefined field200_0x223;
  undefined field201_0x224;
  undefined field202_0x225;
  undefined field203_0x226;
  undefined field204_0x227;
  undefined field205_0x228;
  undefined field206_0x229;
  undefined field207_0x22a;
  undefined field208_0x22b;
  undefined field209_0x22c;
  undefined field210_0x22d;
  undefined field211_0x22e;
  undefined field212_0x22f;
  undefined field213_0x230;
  undefined field214_0x231;
  u8 elfMotion; /* ゼロの周りを飛ぶサイバーエルフの動き */
  u8 field216_0x233[80];
  undefined field217_0x283;
  undefined field218_0x284;
  undefined field219_0x285;
  undefined field220_0x286;
  undefined field221_0x287;
  undefined field222_0x288;
  undefined field223_0x289;
  undefined field224_0x28a;
  undefined field225_0x28b;
};

struct BaseGameState {
  struct State s;
  undefined field1_0x20;
  undefined field2_0x21;
  undefined field3_0x22;
  u8 field4_0x23;
  undefined field5_0x24;
  undefined field6_0x25;
  undefined field7_0x26;
  undefined field8_0x27;
  struct State *friend; /* ジェネレーターキャノンの砲台と本体の関係 */
  struct GameState132 *field10_0x2c;
  undefined field11_0x30;
  undefined field12_0x31;
  undefined field13_0x32;
  undefined field14_0x33;
  struct SpriteState field15_0x34;
  struct Coord coord;
  struct Coord d; /* 移動速度 */
  struct Coord unk_coord;
  struct Beat beatState;
};

struct GameState {
  struct BaseGameState base;
  struct Object obj;
  undefined field2_0xb0;
  undefined field3_0xb1;
  undefined field4_0xb2;
  undefined field5_0xb3;
  struct ZeroState *z; /* エルフチェックしてたからZeroStateで確定 */
  struct Coord prevCoord;
  u32 field8_0xc0;
};

struct GameState132 { /* サイズは132で確定 */
  struct BaseGameState base;
  struct Coord c_116;
  u8 *field2_0x7c;
  undefined field3_0x80;
  undefined field4_0x81;
  undefined field5_0x82;
  undefined field6_0x83;
};

typedef struct BossState BossState, *PBossState;

struct BossState {
  struct BaseGameState base;
  struct Object obj;
  undefined field2_0xb0;
  undefined field3_0xb1;
  undefined field4_0xb2;
  undefined field5_0xb3;
  struct ZeroState *z; /* エルフチェックしてたからZeroStateで確定 */
  struct Coord prevCoord;
  u32 field8_0xc0;
  u8 field9_0xc4[32];
};

typedef struct GameState236 GameState236, *PGameState236;

struct GameState236 {
  struct BaseGameState base;
  struct Object obj;
  undefined field2_0xb0;
  undefined field3_0xb1;
  undefined field4_0xb2;
  undefined field5_0xb3;
  struct ZeroState *z; /* エルフチェックしてたからZeroStateで確定 */
  struct Coord prevCoord;
  u32 field8_0xc0;
  u8 field9_0xc4[40];
};

typedef struct ObjectState ObjectState, *PObjectState;

struct ObjectState { /* 豆など */
  struct BaseGameState base;
  struct Object obj;
  undefined field2_0xb0;
  undefined field3_0xb1;
  undefined field4_0xb2;
  undefined field5_0xb3;
  u8 field6_0xb4;
  undefined field7_0xb5;
  undefined field8_0xb6;
  undefined field9_0xb7;
  struct Coord prevCoord;
  u32 field11_0xc0;
};

typedef struct StateHeader StateHeader, *PStateHeader;

typedef sword s16;

struct StateHeader {   /* 0x02031370, 長さは40で確定 */
  struct State *arr;   /* さまざまなStateが入る */
  s16 type;            /* 02031370 のidx */
  s16 size;            /* arrの各要素のサイズ */
  u16 length;          /* arrの要素数 */
  s16 remaining;       /* lengthを初期値として徐々に減る */
  struct State **done; /* fnをどこまで処理したか だいたいnextを指す */
  struct State *cur;   /* arrの現在処理中の要素 */
  struct State *next;
  struct State *prev;
  u32 field9_0x1c[3];
};

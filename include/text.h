struct CharAnswer { /* 0xf4 */
  u8 magic;         /* 0xf4 */
  u8 id;
};

/* TODO: fix var name */
typedef enum CharCode {
  SPACE = 0 /* 空白 */, 0 = 1 /* ZERO */, 1 = 2 /* ONE */, 2 = 3 /* TWO */, 3 = 4 /* THREE */, 4 = 5 /* FOUR */,
  5 = 6 /* FIVE */, 6 = 7 /* SIX */, 7 = 8 /* SEVEN */, 8 = 9 /* EIGHT */, 9 = 10 /* NINE */, A = 11, B = 12, C = 13,
  D = 14, E = 15, F = 16, G = 17, H = 18, I = 19, J = 20, K = 21, L = 22, M = 23, N = 24, O = 25, P = 26, Q = 27,
  R = 28, S = 29, T = 30, U = 31, V = 32, W = 33, X = 34, Y = 35, Z = 36, ぁ = 37 /* u3041 */, あ = 38 /* u3042 */,
  ぃ = 39 /* u3043 */, い = 40 /* u3044 */, ぅ = 41 /* u3045 */, う = 42 /* u3046 */, ぇ = 43 /* u3047 */,
  え = 44 /* u3048 */, ぉ = 45 /* u3049 */, お = 46 /* u304a */, か = 47 /* u304b */, が = 48 /* u304c */,
  き = 49 /* u304d */, ぎ = 50 /* u304e */, く = 51 /* u304f */, ぐ = 52 /* u3050 */, け = 53 /* u3051 */,
  げ = 54 /* u3052 */, こ = 55 /* u3053 */, ご = 56 /* u3054 */, さ = 57 /* u3055 */, ざ = 58 /* u3056 */,
  し = 59 /* u3057 */, じ = 60 /* u3058 */, す = 61 /* u3059 */, ず = 62 /* u305a */, せ = 63 /* u305b */,
  ぜ = 64 /* u305c */, そ = 65 /* u305d */, ぞ = 66 /* u305e */, た = 67 /* u305f */, だ = 68 /* u3060 */,
  ち = 69 /* u3061 */, ぢ = 70 /* u3062 */, っ = 71 /* u3063 */, つ = 72 /* u3064 */, づ = 73 /* u3065 */,
  て = 74 /* u3066 */, で = 75 /* u3067 */, と = 76 /* u3068 */, ど = 77 /* u3069 */, な = 78 /* u306a */,
  に = 79 /* u306b */, ぬ = 80 /* u306c */, ね = 81 /* u306d */, の = 82 /* u306e */, は = 83 /* u306f */,
  ば = 84 /* u3070 */, ぱ = 85 /* u3071 */, ひ = 86 /* u3072 */, び = 87 /* u3073 */, ぴ = 88 /* u3074 */,
  ふ = 89 /* u3075 */, ぶ = 90 /* u3076 */, ぷ = 91 /* u3077 */, へ = 92 /* u3078 */, べ = 93 /* u3079 */,
  ぺ = 94 /* u307a */, ほ = 95 /* u307b */, ぼ = 96 /* u307c */, ぽ = 97 /* u307d */, ま = 98 /* u307e */,
  み = 99 /* u307f */, む = 100 /* u3080 */, め = 101 /* u3081 */, も = 102 /* u3082 */, ゃ = 103 /* u3083 */,
  や = 104 /* u3084 */, ゅ = 105 /* u3085 */, ゆ = 106 /* u3086 */, ょ = 107 /* u3087 */, よ = 108 /* u3088 */,
  ら = 109 /* u3089 */, り = 110 /* u308a */, る = 111 /* u308b */, れ = 112 /* u308c */, ろ = 113 /* u308d */,
  ゎ = 114 /* u308e */, わ = 115 /* u308f */, を = 116 /* u3092 */, ん = 117 /* u3093 */, ァ = 118 /* u30a1 */,
  ア = 119 /* u30a2 */, ィ = 120 /* u30a3 */, イ = 121 /* u30a4 */, ゥ = 122 /* u30a5 */, ウ = 123 /* u30a6 */,
  ェ = 124 /* u30a7 */, エ = 125 /* u30a8 */, ォ = 126 /* u30a9 */, オ = 127 /* u30aa */, カ = 128 /* u30ab */,
  ガ = 129 /* u30ac */, キ = 130 /* u30ad */, ギ = 131 /* u30ae */, ク = 132 /* u30af */, グ = 133 /* u30b0 */,
  ケ = 134 /* u30b1 */, ゲ = 135 /* u30b2 */, コ = 136 /* u30b3 */, ゴ = 137 /* u30b4 */, サ = 138 /* u30b5 */,
  ザ = 139 /* u30b6 */, シ = 140 /* u30b7 */, ジ = 141 /* u30b8 */, ス = 142 /* u30b9 */, ズ = 143 /* u30ba */,
  セ = 144 /* u30bb */, ゼ = 145 /* u30bc */, ソ = 146 /* u30bd */, ゾ = 147 /* u30be */, タ = 148 /* u30bf */,
  ダ = 149 /* u30c0 */, チ = 150 /* u30c1 */, ッ = 152 /* u30c3 */, ツ = 153 /* u30c4 */, テ = 155 /* u30c6 */,
  デ = 156 /* u30c7 */, ト = 157 /* u30c8 */, ド = 158 /* u30c9 */, ナ = 159 /* u30ca */, 二 = 160 /* u30cb */,
  ヌ = 161 /* u30cc */, ネ = 162 /* u30cd */, ノ = 163 /* u30ce */, ハ = 164 /* u30cf */, バ = 165 /* u30d0 */,
  パ = 166 /* u30d1 */, ヒ = 167 /* u30d2 */, ビ = 168 /* u30d3 */, ピ = 169 /* u30d4 */, フ = 170 /* u30d5 */,
  ブ = 171 /* u30d6 */, プ = 172 /* u30d7 */, ヘ = 173 /* u30d8 */, ベ = 174 /* u30d9 */, ペ = 175 /* u30da */,
  ホ = 176 /* u30db */, ボ = 177 /* u30dc */, ポ = 178 /* u30dd */, マ = 179 /* u30de */, ミ = 180 /* u30df */,
  ム = 181 /* u30e0 */, メ = 182 /* u30e1 */, モ = 183 /* u30e2 */, ャ = 184 /* u30e3 */, ヤ = 185 /* u30e4 */,
  ュ = 186 /* u30e5 */, ユ = 187 /* u30e6 */, ョ = 188 /* u30e7 */, ヨ = 189 /* u30e8 */, ラ = 190 /* u30e9 */,
  リ = 191 /* u30ea */, ル = 192 /* u30eb */, レ = 193 /* u30ec */, ロ = 194 /* u30ed */, ヮ = 195 /* u30ee */,
  ワ = 196 /* u30ef */, ヲ = 197 /* u30f2 */, ン = 198 /* u30f3 */, ヴ = 199 /* u30f4 */, ヵ = 200 /* u30f5 */,
  ヶ = 201 /* u30f6 */, != 202 /* BANG */, UPPER_ARROW_L = 203 /* ↑の左半分 */, UPPER_ARROW_R = 204 /* ↑の右半分 */,
    ▶︎= 205 /* CURSOR */, %= 206 /* PERCENT */, &= 207 /* AND */,
    '=208 /* APOSTROPHE */, (= 209 /* LPAREN */, ) = 210 /* RPAREN */, *= 211 /* STAR */, += 212 /* PLUS */,
    、= 213 /* JAPANESE_COMMA */, -= 214 /* MINUS */,
    。= 215 /* JAPANESE_PERIOD */, SLASH = 216 /* / */, COLON = 217 /* : */, DIR_L = 218 /* 十字キー左 */,
  EQUAL = 219 /* = */, DIR_R = 220 /* 十字キー右 */, ? = 221 /* QUESTION */,
  [
    = 222 /* BRACKET_L */,
  ] = 223 /* BRACKET_R */,
  _ = 224 /* _ */, ~ = 225 /* TILDE */,
    「= 226 /* QUOTATION_L */,
    」= 227 /* QUOTATION_R */, ..= 228 /* ELLIPSES */, .= 229 /* PERIOD */,
    ★= 230 /* BLACK_STAR */,
    ☆= 231 /* WHITE_STAR */, COMMA = 232 /* , */, DOUBLE_QUOTE = 233 /* " */,
    ・= 234 /* DOT */, SIGMA = 235 /* Σ */, ー = 236 /* MINUS2 */,
  KANJI1 = 238 /* 次の1バイトと組み合わせて漢字を表す */, KANJI2 = 239 /* 次の1バイトと組み合わせて漢字を表す */,
  KANJI3 = 240 /* 次の1バイトと組み合わせて漢字を表す */, WHITE = 241 /* 文字色を白に戻す */,
  RED = 242 /* 以降の文字を赤に */, MUGSHOT = 243 /* 次の1バイトと組み合わせてMugshotを表す */, ANSWER = 244,
  SKIP = 245 /* 次の1文字読み飛ばす */, OPTION = 246, BLUE = 247 /* 以降の文字を青に */,
  INSERT = 249 /* 別のテキストを挟みたい時に使う */, TOP = 250 /* メッセージウィンドウを上に */,
  BOTTOM = 251 /* メッセージウィンドウを下に */, LF = 252 /* 改行文字 */, NEXT = 253 /* 次のメッセージ */,
  RETURN = 254 /* 直前の質問に戻る */,
  TERMINATE = 255 /* 終端文字 */
} CharCode;

typedef struct CharMugshot CharMugshot, *PCharMugshot;

typedef enum MsgMugshot {
  NONE = 0,
  RIGHT = 1,
  TEXT_ONLY = 2,
  ZERO = 4,
  BLAZIN = 6,
  CHILDRE = 8,
  HELLBAT = 10,
  DEATHTANZ = 12,
  CUBIT = 14,
  GLACIERLE = 16,
  VOLTEEL = 18,
  TRETISTA = 20,
  BLAZIN_HUMAN = 22,
  CHILDRE_HUMAN = 24,
  HELLBAT_HUMAN = 26,
  DEATHTANZ_HUMAN = 28,
  CUBIT_HUMAN = 30,
  GLACIERLE_HUMAN = 32,
  VOLTEEL_HUMAN = 34,
  TRETISTA_HUMAN = 36,
  ANUBIS = 38,
  HANUMACHINE = 40,
  BLIZZACK = 42,
  HARPUIA = 44,
  LEVIATHAN = 46,
  FAFNIR = 48,
  PHANTOM = 50,
  X = 52,
  COPY_X = 54,
  MOTHER_ELF = 56,
  WEIL = 58,
  OMEGA = 60,
  OMEGA_GOLD = 62,
  CIEL = 64,
  CERVEAU = 66,
  ALOUETTE = 68,
  ANDREW = 70,
  HIBOU = 72,
  ROCINOLLE = 74,
  PERROQUIET = 76,
  MENART = 78,
  DOIGT = 80,
  WEIL2 = 82,
  AUTRUCHE = 84,
  PIC = 86,
  HIRONDELLE = 88,
  FAUCON = 90,
  KISS = 92,
  BRAIN = 94,
  JOAN = 96,
  ROUGE = 98,
  SOUND_ONLY = 100,
  BABY_ELF1 = 102,
  BABY_ELF2 = 104,
  SOUND_ONLY2 = 106,
  COLBOR = 108,
  ARMORD_COPY_X = 110,
  BLURRED_CIEL = 112,
  OMEGA_ZERO = 114
} MsgMugshot;

struct CharMugshot { /* Mugshotを表す文字コード 0xf3 */
  u8 magic;          /* 0xf3 */
  enum MsgMugshot id;
};

typedef struct CharOption CharOption, *PCharOption;

struct CharOption { /* CharCode for option */
  u8 magic;         /* 0xf6 */
  u8 option;
};

typedef struct CharSysFont CharSysFont, *PCharSysFont;

struct CharSysFont {
  u8 magic; /* 0xf7 */
  u8 type;
};

typedef enum MessageMode {
  NONE = 0,
  DRAWING = 1 /* 文字を1つずつ書いている途中 */,
  PROMPT = 2 /* 三角ボタンが出てユーザー入力待ち */,
  OPTION = 4 /* ユーザーが選ぶ必要あり */
} MessageMode;

typedef struct MsgState MsgState, *PMsgState;

typedef word u16;

typedef enum MugshotID {
  NONE = 0,
  TEXT_ONLY = 1,
  ZERO = 2,
  BLAZIN = 3,
  CHILDRE = 4,
  HELLBAT = 5,
  DEATHTANZ = 6,
  CUBIT = 7,
  GLACIERLE = 8,
  VOLTEEL = 9,
  TRETISTA = 10,
  BLAZIN_HUMAN = 11,
  CHILDRE_HUMAN = 12,
  HELLBAT_HUMAN = 13,
  DEATHTANZ_HUMAN = 14,
  CUBIT_HUMAN = 15,
  GLACIERLE_HUMAN = 16,
  VOLTEEL_HUMAN = 17,
  TRETISTA_HUMAN = 18,
  ANUBIS = 19,
  HANUMACHINE = 20,
  BLIZZACK = 21,
  HARPUIA = 22,
  LEVIATHAN = 23,
  FAFNIR = 24,
  PHANTOM = 25,
  X = 26,
  COPY_X = 27,
  MOTHER_ELF = 28,
  WEIL = 29,
  OMEGA = 30,
  OMEGA_GOLD = 31,
  CIEL = 32,
  CERVEAU = 33,
  ALOUETTE = 34,
  ANDREW = 35,
  HIBOU = 36,
  ROCINOLLE = 37,
  PERROQUIET = 38,
  MENART = 39,
  DOIGT = 40,
  WEIL2 = 41,
  AUTRUCHE = 42,
  PIC = 43,
  HIRONDELLE = 44,
  FAUCON = 45,
  KISS = 46,
  BRAIN = 47,
  JOAN = 48,
  ROUGE = 49,
  SOUND_ONLY = 50,
  BABY_ELF1 = 51,
  BABY_ELF2 = 52,
  SOUND_ONLY2 = 53,
  COLBOR = 54,
  ARMORD_COPY_X = 55,
  BLURRED_CIEL = 56,
  OMEGA_ZERO = 57
} MugshotID;

typedef u8 bool8;

typedef enum MsgType {
  NONE = 0,
  OPTION = 1 /* 選択肢付き */,
  AUTO = 80 /* 自動文字送り */
} MsgType;

typedef struct MsgWindow MsgWindow, *PMsgWindow;

typedef sword s16;

/* size: 1 byte */
typedef enum MsgWindowType {
  NONE = 0,
  MUGSHOT = 1 /* 顔つきメッセージ */,
  INLINE = 2 /* 画面下メッセージ */
} MsgWindowType;

struct MsgWindow {
  enum MsgWindowType type;
  u8 phase;
  bool8 prompt; /* プロンプトが出てるか */
  u8 field3_0x3;
};

/* 0x020308d8 */
struct MsgState {
  u16 field0_0x0;
  enum MessageMode mode;
  enum MugshotID mugshot;
  u8 y; /* 大きくするとメッセージウィンドウの位置が下がる(後ろの黒部分は固定) */
  bool8 mugshotRight;
  u8 optionID;
  enum MsgType type;
  struct MsgWindow window;
  u16 len;  /* currentの文字数 */
  s16 done; /* 処理済みの文字数 */
  u16 frame;
  u16 field11_0x16;
  enum CharCode* start;
  enum CharCode* current;
  enum CharCode* next;
  enum CharCode* optional_next;
};

typedef struct Rune Rune, *PRune;

/* 1文字 */
struct Rune {
  u16 idx;
  u8 x;
  u8 y;
};

typedef enum TextID { NONE = 0, RESULT = 256, CIEL_CHATS = 512, SPACE_CRAFT = 768, VOLCANO = 1024 } TextID;

typedef struct UnkStruct_02030618 UnkStruct_02030618, *PUnkStruct_02030618;

struct UnkStruct_02030618 {
  struct UnkStruct_02030618* next;
  enum CharCode c;
  u8 field2_0x5;
  u16 tileID;
};

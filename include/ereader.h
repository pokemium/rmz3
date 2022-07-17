typedef enum BaseWeather { DEFAULT = 0, NIGHT = 1, SNOWY = 2 } BaseWeather; /* 海外版 0x2002477 */

typedef enum BusterShotLooks { DEFAULT = 0, BLACK = 1, REALISTIC = 2 } BusterShotLooks; /* 海外版 0x200247D */

typedef enum CielCompLooks {
  DEFAULT = 0,
  NEW = 1,
  VENDING_MACHINE = 2 /* 自販機 */,
  MONUMENT = 3,
  SUPER_COMPUTER = 4
} CielCompLooks;

typedef enum ECrystalLooks { DEFAULT = 0, ORBS = 1 /* 0x0861f714 */, GREEN = 2 } ECrystalLooks; /* 海外版 0x200247A */

typedef enum ElevatorLooks { DEFAULT = 0, WOOD = 1, CAPSULE = 2 } ElevatorLooks; /* 海外版 0x2002476 */

typedef enum EReader_21b8 {
  NONE = 0,
  HACHIUE = 1 /* ベースに鉢植えが置かれる */,
  ZSABER_ATK_1UP = 4,
  PGUARDIAN_HPUP = 8 /* 不使用 */,
  PHUNTER_HPUP = 16,
  NURSE_ELF_LOOKS = 32,
  REPLOID_52_EC = 64 /* 52ECくれるレプリロイドがベースに出現 */
} EReader_21b8;      /* 海外版 0x2002438 */

typedef enum EReader_21b9 {
  NONE = 0,
  ALOUETTE_DRESS = 2 /* アルエットの服が変わる */,
  ARCHIM_ARCHIL_ATK_1UP = 4 /* 1アップ */,
  HALF_DAMAGE = 8 /* ダメージ半減 */
} EReader_21b9;   /* 海外版 0x2002439 */

typedef enum EReader_21ba {
  NONE = 0,
  REPLOID_152_EC = 1 /* ベースの部屋2A */,
  RECOIL_ATK_1UP = 2,
  ORRANGE_CAT = 4 /* ベースに猫が出現 */,
  SHIELD_ATK_1UP = 64,
  BEETACK_BEENIPE_ATK_1UP = 128
} EReader_21ba; /* 海外版 0x200243A */

typedef enum EReader_21bb {
  NONE = 0,
  PHANTOM_ELF = 2,
  ZBUSTER_ATK_1UP = 4,
  POSTER = 8 /* ベースにポスターが飾られる */,
  ZBUSTER_ATK_2UP = 32,
  REPLOID_80_EC = 64 /* ベースの部屋 1F-A */
} EReader_21bb;      /* 海外版 0x200243b */

typedef enum EReader_21bc {
  NONE = 0,
  FLOWERS = 2 /* ベースの屋根に花 */,
  ANIMAL_ELF_LOOKS = 8,
  YOUNGER_ANDREW = 16 /* アンドリューが若返る */,
  ARCHIM_ARCHIL_ATK_2UP = 32,
  SEAGULLS = 64 /* カモメが出現 */,
  TABBY_CAT = 128 /* トラ猫が出現 */
} EReader_21bc;   /* 海外版 0x200243C */

typedef enum EReader_21bd {
  NONE = 0,
  BEETACK_BEENIPE_ATK_2UP = 1,
  SHILED_ATK_2UP = 4,
  GRAFITTI = 16 /* 落書きが出現 */,
  REPLOID_100_EC = 64 /* ベースの部屋2D近く */,
  RECOIL_ATK_2UP = 128
} EReader_21bd; /* 海外版 0x200243d */

typedef enum EReader_21be {
  NONE = 0,
  CONVERSATION_R_TOWER = 8 /* ベースの右の塔にいるキャラとの会話が変わる */,
  REPLOID_32_EC = 16 /* ベースの部屋2B */,
  REPLOID_52_EC_1 = 64 /* ベースの部屋2C */,
  REPLOID_52_EC_2 = 128 /* ベース2階 */
} EReader_21be;

typedef enum EReader_21bf {
  NONE = 0,
  ELPIZO_ELF = 2,
  SHIELD_ATK_3UP = 8,
  CONVERSATION_L_TOWER = 16 /* ベースの左の塔にいるキャラとの会話が変わる */,
  BEETACK_BEENIPE_ATK_3UP = 128
} EReader_21bf;

typedef enum EReader_21c0 {
  NONE = 0,
  ARCHIM_ARCHIL_ATK_3UP = 1,
  HACKER_ELF_LOOKS = 2,
  CROSSBYNE_HPUP = 4,
  PBASE_HPUP = 8,
  ZBUSTER_ATK_3UP = 16
} EReader_21c0; /* 海外版 0x2002440 */

typedef enum EReader_21c1 {
  NONE = 0,
  PAQUA_HPUP = 1,
  LILIES = 4,
  FISH = 16 /* ベースの港に魚 */,
  RECOIL_ATK_3UP = 32,
  REPLOID_32_EC = 64 /* 3A */,
  REPLOID_52_EC = 128 /* 3B */
} EReader_21c1;       /* 海外版 0x2002441 */

typedef enum EReader_21c2 {
  NONE = 0,
  ARCHIM_ARCHIL_ATK_4UP = 1 /* アーチムとアーチルの攻撃力4アップ */,
  ZSABER_ATK_2UP = 2,
  REPLOID_40_EC = 4 /* 3C */,
  PBOMBER_HP_4UP = 8 /* パンテオンボマー */,
  REPLOID_32_EC = 16 /* 3階 */,
  REPLOID_52_EC = 32 /* 3D */,
  PAQUAMOD_HP_16UP = 64 /* 改造パンテオンアクアの体力16アップ */
} EReader_21c2;

typedef enum EReader_21c3 {
  NONE = 0,
  ZSABER_ATK_3UP = 2,
  PURPLE_NERPLE_HP_4UP = 8,
  SHELL_CRAWLER_HP_4UP = 16 /* シェルクローラー */,
  ICEBON_HP_4UP = 32 /* アイスボン */,
  GCANNON_HP_4UP = 64 /* ジェネレーターキャノン */,
  CLAVEKER_HP_4UP = 128
} EReader_21c3; /* 海外版だと 0x2002442 */

typedef enum EReader_21c4 {
  NONE = 0,
  SHOOTCOUNTER_HP_4UP = 1,
  GRAND_CANNON_HP_4UP = 2,
  SHRIMPOLIN_HP_4UP = 4,
  BATRING_HP_4UP = 8,
  P_CANNON_HP_4UP = 16,
  VOLCAIRE_HP_4UP = 32,
  SNAKECORD_HP_4UP = 64,
  LEMMLNGLES_HP_4UP = 128
} EReader_21c4; /* 海外版 0x2002444 */

typedef enum EReader_21c5 {
  NONE = 0,
  LAMPLORT_HP_4UP = 1,
  TILE_CANNON_HP_4UP = 2,
  SHELLUNO_HP_4UP = 4,
  HEAVY_CANNON_HP_4UP = 8,
  MOTHJIRO_HP_4UP = 16,
  C_CANNON_HP_4UP = 32,
  CALIBEE_G_HP_16UP = 64,
  DEATHLOCK_HP_4UP = 128
} EReader_21c5; /* 海外版 0x2002445 */

typedef enum EReader_21c6 {
  NONE = 0,
  GYRO_CANNON_HP_4UP = 1,
  SHARKSEAL_X_HP_4UP = 2,
  OLWARMER_HP_16UP = 4,
  BRANWARMER_HP_16UP = 8,
  LOCOMO_IF_HP_16UP = 16,
  BEESERVER_HP_16UP = 32,
  MEGAMILPA_HP_16UP = 64
} EReader_21c6; /* 海外版 0x2002446 */

typedef enum ExtraLifeLooks {
  DEFAULT = 0,
  BLUE = 1 /* 0x861f95c */,
  GREEN = 2       /* 0x861f9e0 */
} ExtraLifeLooks; /* 海外版 0x200247C */

typedef enum LifeELooks { DEFAULT = 0, BLUE_ORBS = 1, FLASHING_SQUARE = 2 } LifeELooks; /* 海外版 0x2002479 */

typedef enum MsgBoxBorder {
  DEFAULT = 0,
  SILVER = 1,
  BLUE = 2,
  ACTION = 3,
  MECHANICAL = 4,
  ROSEBUSH = 5,
  COMMAND_LINE = 6,
  CHAINS = 7,
  EXPLOSION = 8
} MsgBoxBorder; /* 海外版 0x2002474 */

typedef enum SDLooks { DEFAULT = 0, BLUE = 1, RED = 2 } SDLooks; /* 海外版 0x200247B */

typedef enum TitleScreenLooks {
  DEFAULT = 0,
  ZERO_1 = 1,
  ZERO_2 = 2,
  ZERO_3 = 3,
  CIEL = 4
} TitleScreenLooks; /* 海外版 0x2002475 */
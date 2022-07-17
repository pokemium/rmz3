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

typedef enum CameraMode { /* Size is 1byte */
                          UNK_00 = 0,
                          UNK_01 = 1,
                          UNK_02 = 2,
                          UNK_03 = 3,
                          UNK_04 = 4,
                          UNK_05 = 5,
                          CHASE_ZERO = 6 /* ゼロのほうへカメラが動いていく */,
                          UNK_07 = 7
} CameraMode;

typedef enum ChargePhase { /* Size is 1byte */
                           NO_CHARGE = 0,
                           SEMI_CHARGE = 1,
                           FULL_CHARGE = 2
} ChargePhase;

typedef enum ChargeState { /* Button press period, size is 1byte. */
                           NONE = 0,
                           SEMI = 40,
                           FULL = 120,
                           MAX = 200
} ChargeState;

typedef enum CielChatFlag {
  SIMULATION_PENDING = 2 /* シミュレーションの結果が出るまで... */,
  FIRST_4MISSION = 3 /* 待たせちゃったわねゼロ 準備はいい？ */,
  NORMAL = 7,
  CielEventTalk = 8 /* わかったわ... */,
  UNK_10 = 16 /* じゃあせめて */
} CielChatFlag;

typedef enum CodeNamePrefix {
  NONE = 0,
  FLAWLESS_01 = 1 /* カンゼンシュギの */,
  TRAITOR = 2 /* ウラギリの */,
  GOD_SPEED = 3 /* ハヤテの */,
  LIGHTNING = 4 /* イダテンの */,
  SLUGGISH = 5 /* ドンソクの */,
  RUTHLESS = 6 /* レイケツ */,
  FLAWLESS_07 = 7 /* ムキズの */,
  WOUNDED = 8 /* キズダラケの */,
  IMMORTAL = 9 /* フジミの */,
  DISK = 10 /* ディスク */,
  ELF = 11 /* エルフ */
} CodeNamePrefix;

typedef enum CodeNameSuffix {
  WARRIOR = 0 /* センシ */,
  HERO = 1 /* ユウシャ */,
  VALIANT = 2 /* エイユウ */,
  SAVIOR = 3 /* キュウセイシュ */,
  REDEEMER = 4 /* ゴッド */,
  GUNMAN = 5 /* ガンマン */,
  SHOOTER = 6 /* シューター */,
  SNIPER = 7 /* スナイパー */,
  EDGE = 8 /* ケンシ */,
  EDGE_BOY = 9 /* ケンキャク */,
  EDGE_MAN = 10 /* ケンセイ */,
  STABBER = 11 /* スタッバー */,
  PENETRATOR = 12 /* ペネトレーター */,
  ROD_MASTER = 13 /* ロッドマスター */,
  RIPPER = 14 /* リッパー */,
  SLASHER = 15 /* スラッシャー */,
  SHIELD_MASTER = 16 /* シールドマスター */,
  KILLER = 17 /* キラー */,
  COLLECTOR = 18 /* コレクター */,
  BREEDER = 19 /* ブリーダー */
} CodeNameSuffix;

typedef enum CommandID {
  WAIT = 1 /* 0202ff44 が 0 になるまで待つ */,
  NOP = 3,
  DISABLE_KEY = 9 /* 0x0202ffb8、キー入力の有効化、無効化 */,
  LOAD_GRAPHIC = 10,
  RUNE = 21,
  MESSAGE = 23,
  BGM = 24 /* BGMの再生、停止 */,
  SOUND = 25 /* SEの再生、停止 */,
  FORCE_ZERO_ACTION = 26 /* ゼロの行動を色々強制する */,
  STAGE_FLAGS = 29,
  ENABLE_MENU = 30 /* メニューの有効化、無効化 */,
  CUTSCENE = 31 /* 0: カットシーン開始, 1: カットシーン終了 */,
  RESULT = 34 /* リザルト画面 */,
  TERMINATE_TIME_ELF = 36 /* ストパーラ系のエルフの効果を強制終了する */,
  TERMINATE = 255 /* コマンド列の終端 */
} CommandID;

typedef enum Dash { /* 0x02037da8 */
                    NONE = 0,
                    DASH = 1,
                    SHADOW = 2
} Dash;

typedef enum ElementID { NEUTRAL = 0, THUNDER = 1, FLAME = 2, ICE = 3 } ElementID;

typedef enum ExtraZeroColor { BODY = 0, PROTO = 1, ALTIMATE = 2 } ExtraZeroColor;

typedef enum FieldFlag_030032e0 {
  ZeroInvincible = 1 /* ゼロが無敵になる 敵は接触ダメージを受けている */,
  EnemyInvincible = 2 /* 敵が無敵になる ゼロはダメージ受ける */,
  Ghost = 128 /* ゼロと敵の接触判定がなくなる */
} FieldFlag_030032e0;

typedef enum FieldFlag_030032e1 {
  ZeroInstantDeath = 1 /* 落下時とかに使う？ */,
  AllEnemyDeath = 2 /* エリア移動時に使う？ */
} FieldFlag_030032e1;

typedef enum Flags_02037c6a { /* 02037c6a */
                              NONE = 0,
                              DISPLAY = 1 /* ゼロを表示するか */,
                              MAYBE_GHOST = 4 /* 当たり判定が消える */,
                              DIRECTION_RIGHT = 16 /* ゼロの攻撃向き(実際の向き) */
} Flags_02037c6a;

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

typedef enum HardMode { /* 0x020021c8 */
                        LOCKED = 0,
                        UNLOCKED = 49
} HardMode;

typedef enum HeadChip { NEUTRAL = 0, AUTO_RECOVER = 1, AUTO_CHARGE = 2, QK_CHARGE = 3 } HeadChip;

typedef enum ImageEffect2 { /* 02037caa */
                            HIDDEN = 0,
                            H_FLIP = 16,
                            V_FLIP = 32
} ImageEffect2;

typedef enum IntrFlag { NONE = 0, VBlank = 1, HBlank = 2 } IntrFlag;

typedef enum MinigameUnlock {
  ZERO = 62,
  CIEL = 68,
  COPY_X = 74,
  HARPUIA = 80,
  FEFNIR = 86,
  LEVIATHAN = 92,
  PHANTOM = 97
} MinigameUnlock;

typedef enum Mode {
  NEUTRAL = 0 /* その他 */,
  MENU = 1 /* メニュー画面 */,
  SD_ANALYSIS = 2 /* シークレットディスクの解析 */,
  MINIGAME = 3 /* ミニゲーム中 */
} Mode;

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

typedef enum Rank { F = 0, E = 1, D = 2, C = 3, B = 4, A = 5, S = 6 } Rank;

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

typedef enum StageChip { /* 0x0835dba8 */
                         NONE = 0,
                         HEAD = 1,
                         BODY = 2,
                         FOOT = 3
} StageChip;

typedef enum StageElfFlags { /* 0x0202fdc8 */
                             PUTITE = 1 /* 一撃死予防 */,
                             ARMOR_ELF = 2 /* キーナイト系 */,
                             GIANT_ELF = 4 /* ハンマーガ系 */,
                             TIME_ELF = 8 /* ストパーラ系 */,
                             DYLPHINA = 32,
                             METTAUR = 64,
                             BYSE = 128
} StageElfFlags;

typedef enum StageFlags0 {
  HardMode = 1,
  UltimateMode = 2,
  CyberSpace = 16,
  CutScene = 32 /* 死ぬ時爆散ではなくカットシーンになる */,
  EnemyHPUp = 64 /* 敵の体力が増える(なんで？) */
} StageFlags0;

typedef enum StageFlags2 { CielEventTalk2 = 1 } StageFlags2;

typedef enum StageFlags_0202fdc9 {
  NONE = 0,
  RANK_A_FORCE = 1 /* エワーネ系エルフが働いている */
} StageFlags_0202fdc9;

typedef enum StageID {
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
} StageID;

typedef enum UltimateMode { /* 0x020021c9 */
                            LOCKED = 0,
                            UNLOCKED = 56
} UltimateMode;

typedef enum UnkStageByte { /* 例: 08347380 */
                            SKIP = 1,
                            UNK_6 = 6
} UnkStageByte;

typedef enum Weapon { BUSTER = 0, SABER = 1, RECOIL = 2, SHIELD = 3, NONE = 255 } Weapon;

typedef enum WeaponBits {
  NONE = 0,
  BUSTER_ONLY = 4 /* バスターのみ使用してクリア */,
  SABER_ONLY = 8 /* セイバーのみ使用してクリア */,
  NO_USED = 12 /* ゲーム開始直後 */
} WeaponBits;

typedef enum ZakoID {
  NONE = 0,
  UNK_01 = 1,
  UNK_02 = 2,
  SHOT_COUNTER = 3,
  BATRING = 4,
  PILLER_CANNON = 5,
  GRAND_CANNON = 6,
  SHRIMPORIN = 7,
  UNK_08 = 8,
  UNK_09 = 9,
  LAMPLORT = 10,
  UNK_0b = 11,
  LEMMINGLES_NEST = 12,
  LEMMINGLES = 13,
  UNK_0e = 14,
  SHARKSEAL_X = 15,
  UNK_10 = 16,
  UNK_11 = 17,
  PANTHEON_AQUA = 18,
  UNK_13 = 19,
  SHELLUNO = 26,
  PANTHEON_BOMBER = 44
} ZakoID;

typedef enum ZeroAction { /* 02037c6d */
                          NEUTRAL = 0,
                          NOCKBACK = 4,
                          RBASE_DOOR = 6,
                          TELEPORT = 10
} ZeroAction;

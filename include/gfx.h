struct BgMapHeader {
  u32 field0_0x0;
  u16 w;
  u16 h;
};

typedef enum GraphicType8 { NONE = 0, TYPE1 = 1, TYPE2 = 2 } GraphicType8;

struct Palette {
  u32 src;
  u16 size;
  bool8 isLZ77;
  u8 dst;
};

union GraphicProps {
  u16 type16;
  enum GraphicType8 type;
  u8 unk;
};

struct Graphic { /* size: 20 bytes */
  s32 src;
  u16 size;
  u16 field2_0x6;
  u16 field3_0x8;
  union GraphicProps props; /* 2バイト */
  struct Palette pal;
};

union GraphicSize {
  s32 size;
  u16 lo;
  u16 hi;
};

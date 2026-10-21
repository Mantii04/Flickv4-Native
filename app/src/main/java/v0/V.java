package v0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;
import s0.C1613i;
import s0.C1615k;
import s0.C1619o;
import s0.C1620p;
import s0.C1623s;

/* loaded from: classes.dex */
public final class V {

    /* renamed from: a, reason: collision with root package name */
    public final List f20395a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20396b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20397c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20398d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20399e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20400f;

    /* renamed from: g, reason: collision with root package name */
    public final int f20401g;

    /* renamed from: h, reason: collision with root package name */
    public final int f20402h;

    /* renamed from: i, reason: collision with root package name */
    public final int f20403i;

    /* renamed from: j, reason: collision with root package name */
    public final int f20404j;

    /* renamed from: k, reason: collision with root package name */
    public final int f20405k;

    /* renamed from: l, reason: collision with root package name */
    public final float f20406l;

    /* renamed from: m, reason: collision with root package name */
    public final int f20407m;

    /* renamed from: n, reason: collision with root package name */
    public final String f20408n;

    /* renamed from: o, reason: collision with root package name */
    public final C1623s f20409o;

    public V(List list, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f3, int i16, String str, C1623s c1623s) {
        this.f20395a = list;
        this.f20396b = i2;
        this.f20397c = i7;
        this.f20398d = i8;
        this.f20399e = i9;
        this.f20400f = i10;
        this.f20401g = i11;
        this.f20402h = i12;
        this.f20403i = i13;
        this.f20404j = i14;
        this.f20405k = i15;
        this.f20406l = f3;
        this.f20407m = i16;
        this.f20408n = str;
        this.f20409o = c1623s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static V a(ParsableByteArray parsableByteArray, boolean z6, C1623s c1623s) {
        boolean z7;
        C1619o parseH265Sei3dRefDisplayInfo;
        int i2;
        int i7 = 4;
        try {
            if (z6) {
                parsableByteArray.skipBytes(4);
            } else {
                parsableByteArray.skipBytes(21);
            }
            int readUnsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (true) {
                z7 = true;
                if (i9 >= readUnsignedByte2) {
                    break;
                }
                parsableByteArray.skipBytes(1);
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                for (int i11 = 0; i11 < readUnsignedShort; i11++) {
                    int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                    i10 += readUnsignedShort2 + 4;
                    parsableByteArray.skipBytes(readUnsignedShort2);
                }
                i9++;
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i10];
            C1623s c1623s2 = c1623s;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            int i21 = -1;
            float f3 = 1.0f;
            String str = null;
            int i22 = 0;
            int i23 = 0;
            while (i22 < readUnsignedByte2) {
                int readUnsignedByte3 = parsableByteArray.readUnsignedByte() & 63;
                int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
                int i24 = i8;
                C1623s c1623s3 = c1623s2;
                while (i24 < readUnsignedShort3) {
                    boolean z8 = z7;
                    int readUnsignedShort4 = parsableByteArray.readUnsignedShort();
                    int i25 = readUnsignedByte;
                    System.arraycopy(s0.v.f19984a, i8, bArr, i23, i7);
                    int i26 = i23 + 4;
                    System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), bArr, i26, readUnsignedShort4);
                    if (readUnsignedByte3 == 32 && i24 == 0) {
                        c1623s3 = s0.v.parseH265VpsNalUnit(bArr, i26, i26 + readUnsignedShort4);
                    } else {
                        if (readUnsignedByte3 == 33 && i24 == 0) {
                            C1620p parseH265SpsNalUnit = s0.v.parseH265SpsNalUnit(bArr, i26, i26 + readUnsignedShort4, c1623s3);
                            i12 = parseH265SpsNalUnit.f19940a + 1;
                            i13 = parseH265SpsNalUnit.f19946g;
                            int i27 = parseH265SpsNalUnit.f19947h;
                            i15 = parseH265SpsNalUnit.f19942c + 8;
                            i16 = parseH265SpsNalUnit.f19943d + 8;
                            int i28 = parseH265SpsNalUnit.f19950k;
                            i14 = i27;
                            int i29 = parseH265SpsNalUnit.f19951l;
                            int i30 = parseH265SpsNalUnit.f19952m;
                            float f7 = parseH265SpsNalUnit.f19948i;
                            int i31 = parseH265SpsNalUnit.f19949j;
                            C1615k c1615k = parseH265SpsNalUnit.f19941b;
                            if (c1615k != null) {
                                i2 = i31;
                                str = CodecSpecificDataUtil.buildHevcCodecString(c1615k.f19924a, c1615k.f19925b, c1615k.f19926c, c1615k.f19927d, c1615k.f19928e, c1615k.f19929f);
                            } else {
                                i2 = i31;
                            }
                            i21 = i2;
                            f3 = f7;
                            i19 = i30;
                            i18 = i29;
                            i17 = i28;
                        } else if (readUnsignedByte3 == 39 && i24 == 0 && (parseH265Sei3dRefDisplayInfo = s0.v.parseH265Sei3dRefDisplayInfo(bArr, i26, i26 + readUnsignedShort4)) != null && c1623s3 != null) {
                            i8 = 0;
                            i20 = parseH265Sei3dRefDisplayInfo.f19939a == ((C1613i) c1623s3.f19958a.get(0)).f19920b ? 4 : 5;
                        }
                        i8 = 0;
                    }
                    i23 = i26 + readUnsignedShort4;
                    parsableByteArray.skipBytes(readUnsignedShort4);
                    i24++;
                    z7 = z8;
                    readUnsignedByte = i25;
                    i7 = 4;
                }
                i22++;
                c1623s2 = c1623s3;
                i7 = 4;
            }
            return new V(i10 == 0 ? Collections.EMPTY_LIST : Collections.singletonList(bArr), readUnsignedByte + 1, i12, i13, i14, i15, i16, i17, i18, i19, i20, f3, i21, str, c1623s2);
        } catch (ArrayIndexOutOfBoundsException e3) {
            throw ParserException.createForMalformedContainer("Error parsing".concat(z6 ? "L-HEVC config" : "HEVC config"), e3);
        }
    }

    public static V parse(ParsableByteArray parsableByteArray) throws ParserException {
        return a(parsableByteArray, false, null);
    }

    public static V parseLayered(ParsableByteArray parsableByteArray, C1623s c1623s) throws ParserException {
        return a(parsableByteArray, true, c1623s);
    }
}

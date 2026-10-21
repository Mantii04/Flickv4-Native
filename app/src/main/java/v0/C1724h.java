package v0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;
import s0.C1625u;

/* renamed from: v0.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1724h {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f20461a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20462b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20463c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20464d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20465e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20466f;

    /* renamed from: g, reason: collision with root package name */
    public final int f20467g;

    /* renamed from: h, reason: collision with root package name */
    public final int f20468h;

    /* renamed from: i, reason: collision with root package name */
    public final int f20469i;

    /* renamed from: j, reason: collision with root package name */
    public final int f20470j;

    /* renamed from: k, reason: collision with root package name */
    public final float f20471k;

    /* renamed from: l, reason: collision with root package name */
    public final String f20472l;

    public C1724h(ArrayList arrayList, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, float f3, String str) {
        this.f20461a = arrayList;
        this.f20462b = i2;
        this.f20463c = i7;
        this.f20464d = i8;
        this.f20465e = i9;
        this.f20466f = i10;
        this.f20467g = i11;
        this.f20468h = i12;
        this.f20469i = i13;
        this.f20470j = i14;
        this.f20471k = f3;
        this.f20472l = str;
    }

    public static C1724h parse(ParsableByteArray parsableByteArray) throws ParserException {
        String str;
        int i2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        float f3;
        int i12;
        int i13;
        try {
            parsableByteArray.skipBytes(4);
            int readUnsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
            if (readUnsignedByte == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
            for (int i14 = 0; i14 < readUnsignedByte2; i14++) {
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                int position = parsableByteArray.getPosition();
                parsableByteArray.skipBytes(readUnsignedShort);
                arrayList.add(CodecSpecificDataUtil.buildNalUnit(parsableByteArray.getData(), position, readUnsignedShort));
            }
            int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
            for (int i15 = 0; i15 < readUnsignedByte3; i15++) {
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                int position2 = parsableByteArray.getPosition();
                parsableByteArray.skipBytes(readUnsignedShort2);
                arrayList.add(CodecSpecificDataUtil.buildNalUnit(parsableByteArray.getData(), position2, readUnsignedShort2));
            }
            if (readUnsignedByte2 > 0) {
                C1625u parseSpsNalUnit = s0.v.parseSpsNalUnit((byte[]) arrayList.get(0), 4, ((byte[]) arrayList.get(0)).length);
                int i16 = parseSpsNalUnit.f19969e;
                int i17 = parseSpsNalUnit.f19970f;
                int i18 = parseSpsNalUnit.f19972h + 8;
                int i19 = parseSpsNalUnit.f19973i + 8;
                int i20 = parseSpsNalUnit.f19980p;
                int i21 = parseSpsNalUnit.f19981q;
                int i22 = parseSpsNalUnit.f19982r;
                int i23 = parseSpsNalUnit.f19983s;
                float f7 = parseSpsNalUnit.f19971g;
                str = CodecSpecificDataUtil.buildAvcCodecString(parseSpsNalUnit.f19965a, parseSpsNalUnit.f19966b, parseSpsNalUnit.f19967c);
                i9 = i21;
                i10 = i22;
                i11 = i23;
                f3 = f7;
                i7 = i17;
                i8 = i18;
                i12 = i19;
                i13 = i20;
                i2 = i16;
            } else {
                str = null;
                i2 = -1;
                i7 = -1;
                i8 = -1;
                i9 = -1;
                i10 = -1;
                i11 = 16;
                f3 = 1.0f;
                i12 = -1;
                i13 = -1;
            }
            return new C1724h(arrayList, readUnsignedByte, i2, i7, i8, i12, i13, i9, i10, i11, f3, str);
        } catch (ArrayIndexOutOfBoundsException e3) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e3);
        }
    }
}

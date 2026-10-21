package B0;

import A.i;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.flv.TagPayloadReader$UnsupportedFormatException;
import s0.v;
import v0.C1724h;
import v0.r0;

/* loaded from: classes.dex */
public final class e extends d {

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f137b;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f138c;

    /* renamed from: d, reason: collision with root package name */
    public int f139d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f140e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f141f;

    /* renamed from: g, reason: collision with root package name */
    public int f142g;

    public e(r0 r0Var) {
        super(r0Var);
        this.f137b = new ParsableByteArray(v.f19984a);
        this.f138c = new ParsableByteArray(4);
    }

    @Override // B0.d
    public boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader$UnsupportedFormatException {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = (readUnsignedByte >> 4) & 15;
        int i7 = readUnsignedByte & 15;
        if (i7 != 7) {
            throw new TagPayloadReader$UnsupportedFormatException(i.f(i7, "Video format not supported: "));
        }
        this.f142g = i2;
        return i2 != 5;
    }

    @Override // B0.d
    public boolean parsePayload(ParsableByteArray parsableByteArray, long j7) throws ParserException {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        long readInt24 = (parsableByteArray.readInt24() * 1000) + j7;
        r0 r0Var = this.f136a;
        if (readUnsignedByte == 0 && !this.f140e) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray(new byte[parsableByteArray.bytesLeft()]);
            parsableByteArray.readBytes(parsableByteArray2.getData(), 0, parsableByteArray.bytesLeft());
            C1724h parse = C1724h.parse(parsableByteArray2);
            this.f139d = parse.f20462b;
            r0Var.format(new Format.Builder().setContainerMimeType(MimeTypes.VIDEO_FLV).setSampleMimeType(MimeTypes.VIDEO_H264).setCodecs(parse.f20472l).setWidth(parse.f20463c).setHeight(parse.f20464d).setPixelWidthHeightRatio(parse.f20471k).setInitializationData(parse.f20461a).build());
            this.f140e = true;
            return false;
        }
        if (readUnsignedByte == 1 && this.f140e) {
            int i2 = this.f142g == 1 ? 1 : 0;
            if (this.f141f || i2 != 0) {
                ParsableByteArray parsableByteArray3 = this.f138c;
                byte[] data = parsableByteArray3.getData();
                data[0] = 0;
                data[1] = 0;
                data[2] = 0;
                int i7 = 4 - this.f139d;
                int i8 = 0;
                while (parsableByteArray.bytesLeft() > 0) {
                    parsableByteArray.readBytes(parsableByteArray3.getData(), i7, this.f139d);
                    parsableByteArray3.setPosition(0);
                    int readUnsignedIntToInt = parsableByteArray3.readUnsignedIntToInt();
                    ParsableByteArray parsableByteArray4 = this.f137b;
                    parsableByteArray4.setPosition(0);
                    r0Var.sampleData(parsableByteArray4, 4);
                    r0Var.sampleData(parsableByteArray, readUnsignedIntToInt);
                    i8 = i8 + 4 + readUnsignedIntToInt;
                }
                this.f136a.sampleMetadata(readInt24, i2, i8, 0, null);
                this.f141f = true;
                return true;
            }
        }
        return false;
    }
}

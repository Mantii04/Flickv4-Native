package c1;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import v0.AbstractC1715A;
import v0.C1741z;
import v0.r0;

/* renamed from: c1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0703h implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f8731a;

    /* renamed from: c, reason: collision with root package name */
    public final String f8733c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8734d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8735e;

    /* renamed from: f, reason: collision with root package name */
    public String f8736f;

    /* renamed from: g, reason: collision with root package name */
    public r0 f8737g;

    /* renamed from: i, reason: collision with root package name */
    public int f8739i;

    /* renamed from: j, reason: collision with root package name */
    public int f8740j;

    /* renamed from: k, reason: collision with root package name */
    public long f8741k;

    /* renamed from: l, reason: collision with root package name */
    public Format f8742l;

    /* renamed from: m, reason: collision with root package name */
    public int f8743m;

    /* renamed from: n, reason: collision with root package name */
    public int f8744n;

    /* renamed from: h, reason: collision with root package name */
    public int f8738h = 0;

    /* renamed from: q, reason: collision with root package name */
    public long f8747q = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f8732b = new AtomicInteger();

    /* renamed from: o, reason: collision with root package name */
    public int f8745o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f8746p = -1;

    public C0703h(String str, int i2, int i7, String str2) {
        this.f8731a = new ParsableByteArray(new byte[i7]);
        this.f8733c = str;
        this.f8734d = i2;
        this.f8735e = str2;
    }

    public final boolean a(ParsableByteArray parsableByteArray, byte[] bArr, int i2) {
        int min = Math.min(parsableByteArray.bytesLeft(), i2 - this.f8739i);
        parsableByteArray.readBytes(bArr, this.f8739i, min);
        int i7 = this.f8739i + min;
        this.f8739i = i7;
        return i7 == i2;
    }

    public final void b(C1741z c1741z) {
        int i2;
        int i7 = c1741z.f20573b;
        if (i7 == -2147483647 || (i2 = c1741z.f20574c) == -1) {
            return;
        }
        Format format = this.f8742l;
        String str = c1741z.f20572a;
        if (format != null && i2 == format.channelCount && i7 == format.sampleRate && Objects.equals(str, format.sampleMimeType)) {
            return;
        }
        Format format2 = this.f8742l;
        Format build = (format2 == null ? new Format.Builder() : format2.buildUpon()).setId(this.f8736f).setContainerMimeType(this.f8735e).setSampleMimeType(str).setChannelCount(i2).setSampleRate(c1741z.f20573b).setLanguage(this.f8733c).setRoleFlags(this.f8734d).build();
        this.f8742l = build;
        this.f8737g.format(build);
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        P3.v.checkNotNull(this.f8737g);
        while (parsableByteArray.bytesLeft() > 0) {
            int i2 = this.f8738h;
            ParsableByteArray parsableByteArray2 = this.f8731a;
            switch (i2) {
                case 0:
                    while (true) {
                        if (parsableByteArray.bytesLeft() > 0) {
                            int i7 = this.f8740j << 8;
                            this.f8740j = i7;
                            int readUnsignedByte = i7 | parsableByteArray.readUnsignedByte();
                            this.f8740j = readUnsignedByte;
                            int frameType = AbstractC1715A.getFrameType(readUnsignedByte);
                            this.f8744n = frameType;
                            if (frameType != 0) {
                                byte[] data = parsableByteArray2.getData();
                                int i8 = this.f8740j;
                                data[0] = (byte) ((i8 >> 24) & 255);
                                data[1] = (byte) ((i8 >> 16) & 255);
                                data[2] = (byte) ((i8 >> 8) & 255);
                                data[3] = (byte) (i8 & 255);
                                this.f8739i = 4;
                                this.f8740j = 0;
                                int i9 = this.f8744n;
                                if (i9 != 3 && i9 != 4) {
                                    if (i9 != 1) {
                                        this.f8738h = 2;
                                        break;
                                    } else {
                                        this.f8738h = 1;
                                        break;
                                    }
                                } else {
                                    this.f8738h = 4;
                                    break;
                                }
                            }
                        }
                    }
                    break;
                case 1:
                    if (!a(parsableByteArray, parsableByteArray2.getData(), 18)) {
                        break;
                    } else {
                        byte[] data2 = parsableByteArray2.getData();
                        if (this.f8742l == null) {
                            Format parseDtsFormat = AbstractC1715A.parseDtsFormat(data2, this.f8736f, this.f8733c, this.f8734d, this.f8735e, null);
                            this.f8742l = parseDtsFormat;
                            this.f8737g.format(parseDtsFormat);
                        }
                        this.f8743m = AbstractC1715A.getDtsFrameSize(data2);
                        this.f8741k = com.google.common.primitives.a.checkedCast(Util.sampleCountToDurationUs(AbstractC1715A.parseDtsAudioSampleCount(data2), this.f8742l.sampleRate));
                        parsableByteArray2.setPosition(0);
                        this.f8737g.sampleData(parsableByteArray2, 18);
                        this.f8738h = 6;
                        break;
                    }
                case 2:
                    if (!a(parsableByteArray, parsableByteArray2.getData(), 7)) {
                        break;
                    } else {
                        this.f8745o = AbstractC1715A.parseDtsHdHeaderSize(parsableByteArray2.getData());
                        this.f8738h = 3;
                        break;
                    }
                case 3:
                    if (!a(parsableByteArray, parsableByteArray2.getData(), this.f8745o)) {
                        break;
                    } else {
                        C1741z parseDtsHdHeader = AbstractC1715A.parseDtsHdHeader(parsableByteArray2.getData());
                        b(parseDtsHdHeader);
                        this.f8743m = parseDtsHdHeader.f20575d;
                        long j7 = parseDtsHdHeader.f20576e;
                        this.f8741k = j7 != androidx.media3.common.C.TIME_UNSET ? j7 : 0L;
                        parsableByteArray2.setPosition(0);
                        this.f8737g.sampleData(parsableByteArray2, this.f8745o);
                        this.f8738h = 6;
                        break;
                    }
                case 4:
                    if (!a(parsableByteArray, parsableByteArray2.getData(), 6)) {
                        break;
                    } else {
                        int parseDtsUhdHeaderSize = AbstractC1715A.parseDtsUhdHeaderSize(parsableByteArray2.getData());
                        this.f8746p = parseDtsUhdHeaderSize;
                        int i10 = this.f8739i;
                        if (i10 > parseDtsUhdHeaderSize) {
                            int i11 = i10 - parseDtsUhdHeaderSize;
                            this.f8739i = i10 - i11;
                            parsableByteArray.setPosition(parsableByteArray.getPosition() - i11);
                        }
                        this.f8738h = 5;
                        break;
                    }
                case 5:
                    if (!a(parsableByteArray, parsableByteArray2.getData(), this.f8746p)) {
                        break;
                    } else {
                        C1741z parseDtsUhdHeader = AbstractC1715A.parseDtsUhdHeader(parsableByteArray2.getData(), this.f8732b);
                        if (this.f8744n == 3) {
                            b(parseDtsUhdHeader);
                        }
                        this.f8743m = parseDtsUhdHeader.f20575d;
                        long j8 = parseDtsUhdHeader.f20576e;
                        this.f8741k = j8 != androidx.media3.common.C.TIME_UNSET ? j8 : 0L;
                        parsableByteArray2.setPosition(0);
                        this.f8737g.sampleData(parsableByteArray2, this.f8746p);
                        this.f8738h = 6;
                        break;
                    }
                case 6:
                    int min = Math.min(parsableByteArray.bytesLeft(), this.f8743m - this.f8739i);
                    this.f8737g.sampleData(parsableByteArray, min);
                    int i12 = this.f8739i + min;
                    this.f8739i = i12;
                    if (i12 == this.f8743m) {
                        P3.v.checkState(this.f8747q != androidx.media3.common.C.TIME_UNSET);
                        this.f8737g.sampleMetadata(this.f8747q, this.f8744n == 4 ? 0 : 1, this.f8743m, 0, null);
                        this.f8747q += this.f8741k;
                        this.f8738h = 0;
                        break;
                    } else {
                        break;
                    }
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8736f = c0692w.getFormatId();
        this.f8737g = f3.track(c0692w.getTrackId(), 1);
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8747q = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8738h = 0;
        this.f8739i = 0;
        this.f8740j = 0;
        this.f8747q = androidx.media3.common.C.TIME_UNSET;
        this.f8732b.set(0);
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
    }
}

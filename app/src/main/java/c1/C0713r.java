package c1;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import s0.C1624t;
import s0.C1625u;
import v0.r0;

/* renamed from: c1.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0713r implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final C0682L f8839a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8840b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8841c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8842d;

    /* renamed from: h, reason: collision with root package name */
    public long f8846h;

    /* renamed from: j, reason: collision with root package name */
    public String f8848j;

    /* renamed from: k, reason: collision with root package name */
    public r0 f8849k;

    /* renamed from: l, reason: collision with root package name */
    public C0712q f8850l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f8851m;

    /* renamed from: o, reason: collision with root package name */
    public boolean f8853o;

    /* renamed from: i, reason: collision with root package name */
    public final boolean[] f8847i = new boolean[3];

    /* renamed from: e, reason: collision with root package name */
    public final C0672B f8843e = new C0672B(7, 128);

    /* renamed from: f, reason: collision with root package name */
    public final C0672B f8844f = new C0672B(8, 128);

    /* renamed from: g, reason: collision with root package name */
    public final C0672B f8845g = new C0672B(6, 128);

    /* renamed from: n, reason: collision with root package name */
    public long f8852n = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: p, reason: collision with root package name */
    public final ParsableByteArray f8854p = new ParsableByteArray();

    public C0713r(C0682L c0682l, boolean z6, boolean z7, String str) {
        this.f8839a = c0682l;
        this.f8840b = z6;
        this.f8841c = z7;
        this.f8842d = str;
    }

    public final void a(int i2, int i7, long j7, long j8) {
        boolean z6 = this.f8851m;
        C0682L c0682l = this.f8839a;
        if (!z6 || this.f8850l.needsSpsPps()) {
            C0672B c0672b = this.f8843e;
            c0672b.endNalUnit(i7);
            C0672B c0672b2 = this.f8844f;
            c0672b2.endNalUnit(i7);
            if (this.f8851m) {
                if (c0672b.isCompleted()) {
                    C1625u parseSpsNalUnit = s0.v.parseSpsNalUnit(c0672b.f8546d, 3, c0672b.f8547e);
                    c0682l.setReorderingQueueSize(parseSpsNalUnit.f19983s);
                    this.f8850l.putSps(parseSpsNalUnit);
                    c0672b.reset();
                } else if (c0672b2.isCompleted()) {
                    this.f8850l.putPps(s0.v.parsePpsNalUnit(c0672b2.f8546d, 3, c0672b2.f8547e));
                    c0672b2.reset();
                }
            } else if (c0672b.isCompleted() && c0672b2.isCompleted()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(c0672b.f8546d, c0672b.f8547e));
                arrayList.add(Arrays.copyOf(c0672b2.f8546d, c0672b2.f8547e));
                C1625u parseSpsNalUnit2 = s0.v.parseSpsNalUnit(c0672b.f8546d, 3, c0672b.f8547e);
                C1624t parsePpsNalUnit = s0.v.parsePpsNalUnit(c0672b2.f8546d, 3, c0672b2.f8547e);
                String buildAvcCodecString = CodecSpecificDataUtil.buildAvcCodecString(parseSpsNalUnit2.f19965a, parseSpsNalUnit2.f19966b, parseSpsNalUnit2.f19967c);
                r0 r0Var = this.f8849k;
                Format.Builder initializationData = new Format.Builder().setId(this.f8848j).setContainerMimeType(this.f8842d).setSampleMimeType(MimeTypes.VIDEO_H264).setCodecs(buildAvcCodecString).setWidth(parseSpsNalUnit2.f19969e).setHeight(parseSpsNalUnit2.f19970f).setColorInfo(new ColorInfo.Builder().setColorSpace(parseSpsNalUnit2.f19980p).setColorRange(parseSpsNalUnit2.f19981q).setColorTransfer(parseSpsNalUnit2.f19982r).setLumaBitdepth(parseSpsNalUnit2.f19972h + 8).setChromaBitdepth(parseSpsNalUnit2.f19973i + 8).build()).setPixelWidthHeightRatio(parseSpsNalUnit2.f19971g).setInitializationData(arrayList);
                int i8 = parseSpsNalUnit2.f19983s;
                r0Var.format(initializationData.setMaxNumReorderSamples(i8).build());
                this.f8851m = true;
                c0682l.setReorderingQueueSize(i8);
                this.f8850l.putSps(parseSpsNalUnit2);
                this.f8850l.putPps(parsePpsNalUnit);
                c0672b.reset();
                c0672b2.reset();
            }
        }
        C0672B c0672b3 = this.f8845g;
        if (c0672b3.endNalUnit(i7)) {
            int unescapeStream = s0.v.unescapeStream(c0672b3.f8546d, c0672b3.f8547e);
            byte[] bArr = c0672b3.f8546d;
            ParsableByteArray parsableByteArray = this.f8854p;
            parsableByteArray.reset(bArr, unescapeStream);
            parsableByteArray.setPosition(4);
            c0682l.consume(j8, parsableByteArray);
        }
        if (this.f8850l.endNalUnit(j7, i2, this.f8851m)) {
            this.f8853o = false;
        }
    }

    public final void b(int i2, byte[] bArr, int i7) {
        if (!this.f8851m || this.f8850l.needsSpsPps()) {
            this.f8843e.appendToNalUnit(bArr, i2, i7);
            this.f8844f.appendToNalUnit(bArr, i2, i7);
        }
        this.f8845g.appendToNalUnit(bArr, i2, i7);
        this.f8850l.appendToNalUnit(bArr, i2, i7);
    }

    public final void c(int i2, long j7, long j8) {
        if (!this.f8851m || this.f8850l.needsSpsPps()) {
            this.f8843e.startNalUnit(i2);
            this.f8844f.startNalUnit(i2);
        }
        this.f8845g.startNalUnit(i2);
        this.f8850l.startNalUnit(j7, i2, j8, this.f8853o);
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) {
        int i2;
        P3.v.checkNotNull(this.f8849k);
        Util.castNonNull(this.f8850l);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        this.f8846h += parsableByteArray.bytesLeft();
        this.f8849k.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int findNalUnit = s0.v.findNalUnit(data, position, limit, this.f8847i);
            if (findNalUnit == limit) {
                b(position, data, limit);
                return;
            }
            int nalUnitType = s0.v.getNalUnitType(data, findNalUnit);
            if (findNalUnit <= 0 || data[findNalUnit - 1] != 0) {
                i2 = 3;
            } else {
                findNalUnit--;
                i2 = 4;
            }
            int i7 = findNalUnit;
            int i8 = i2;
            int i9 = i7 - position;
            if (i9 > 0) {
                b(position, data, i7);
            }
            int i10 = limit - i7;
            long j7 = this.f8846h - i10;
            a(i10, i9 < 0 ? -i9 : 0, j7, this.f8852n);
            c(nalUnitType, j7, this.f8852n);
            position = i7 + i8;
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8848j = c0692w.getFormatId();
        r0 track = f3.track(c0692w.getTrackId(), 2);
        this.f8849k = track;
        this.f8850l = new C0712q(track, this.f8840b, this.f8841c);
        this.f8839a.createTracks(f3, c0692w);
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
        P3.v.checkNotNull(this.f8849k);
        Util.castNonNull(this.f8850l);
        if (z6) {
            this.f8839a.flush();
            a(0, 0, this.f8846h, this.f8852n);
            c(9, this.f8846h, this.f8852n);
            a(0, 0, this.f8846h, this.f8852n);
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8852n = j7;
        this.f8853o |= (i2 & 2) != 0;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8846h = 0L;
        this.f8853o = false;
        this.f8852n = androidx.media3.common.C.TIME_UNSET;
        s0.v.clearPrefixFlags(this.f8847i);
        this.f8843e.reset();
        this.f8844f.reset();
        this.f8845g.reset();
        this.f8839a.clear();
        C0712q c0712q = this.f8850l;
        if (c0712q != null) {
            c0712q.reset();
        }
    }
}

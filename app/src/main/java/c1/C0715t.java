package c1;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.Collections;
import s0.C1615k;
import s0.C1620p;
import v0.r0;

/* renamed from: c1.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0715t implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final C0682L f8868a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8869b;

    /* renamed from: c, reason: collision with root package name */
    public String f8870c;

    /* renamed from: d, reason: collision with root package name */
    public r0 f8871d;

    /* renamed from: e, reason: collision with root package name */
    public C0714s f8872e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8873f;

    /* renamed from: m, reason: collision with root package name */
    public long f8880m;

    /* renamed from: g, reason: collision with root package name */
    public final boolean[] f8874g = new boolean[3];

    /* renamed from: h, reason: collision with root package name */
    public final C0672B f8875h = new C0672B(32, 128);

    /* renamed from: i, reason: collision with root package name */
    public final C0672B f8876i = new C0672B(33, 128);

    /* renamed from: j, reason: collision with root package name */
    public final C0672B f8877j = new C0672B(34, 128);

    /* renamed from: k, reason: collision with root package name */
    public final C0672B f8878k = new C0672B(39, 128);

    /* renamed from: l, reason: collision with root package name */
    public final C0672B f8879l = new C0672B(40, 128);

    /* renamed from: n, reason: collision with root package name */
    public long f8881n = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: o, reason: collision with root package name */
    public final ParsableByteArray f8882o = new ParsableByteArray();

    public C0715t(C0682L c0682l, String str) {
        this.f8868a = c0682l;
        this.f8869b = str;
    }

    public final void a(int i2, int i7, long j7, long j8) {
        this.f8872e.endNalUnit(j7, i2, this.f8873f);
        boolean z6 = this.f8873f;
        C0682L c0682l = this.f8868a;
        if (!z6) {
            C0672B c0672b = this.f8875h;
            c0672b.endNalUnit(i7);
            C0672B c0672b2 = this.f8876i;
            c0672b2.endNalUnit(i7);
            C0672B c0672b3 = this.f8877j;
            c0672b3.endNalUnit(i7);
            if (c0672b.isCompleted() && c0672b2.isCompleted() && c0672b3.isCompleted()) {
                String str = this.f8870c;
                int i8 = c0672b.f8547e;
                byte[] bArr = new byte[c0672b2.f8547e + i8 + c0672b3.f8547e];
                System.arraycopy(c0672b.f8546d, 0, bArr, 0, i8);
                System.arraycopy(c0672b2.f8546d, 0, bArr, c0672b.f8547e, c0672b2.f8547e);
                System.arraycopy(c0672b3.f8546d, 0, bArr, c0672b.f8547e + c0672b2.f8547e, c0672b3.f8547e);
                C1620p parseH265SpsNalUnit = s0.v.parseH265SpsNalUnit(c0672b2.f8546d, 3, c0672b2.f8547e, null);
                C1615k c1615k = parseH265SpsNalUnit.f19941b;
                Format build = new Format.Builder().setId(str).setContainerMimeType(this.f8869b).setSampleMimeType(MimeTypes.VIDEO_H265).setCodecs(c1615k != null ? CodecSpecificDataUtil.buildHevcCodecString(c1615k.f19924a, c1615k.f19925b, c1615k.f19926c, c1615k.f19927d, c1615k.f19928e, c1615k.f19929f) : null).setWidth(parseH265SpsNalUnit.f19944e).setHeight(parseH265SpsNalUnit.f19945f).setDecodedWidth(parseH265SpsNalUnit.f19946g).setDecodedHeight(parseH265SpsNalUnit.f19947h).setColorInfo(new ColorInfo.Builder().setColorSpace(parseH265SpsNalUnit.f19950k).setColorRange(parseH265SpsNalUnit.f19951l).setColorTransfer(parseH265SpsNalUnit.f19952m).setLumaBitdepth(parseH265SpsNalUnit.f19942c + 8).setChromaBitdepth(parseH265SpsNalUnit.f19943d + 8).build()).setPixelWidthHeightRatio(parseH265SpsNalUnit.f19948i).setMaxNumReorderSamples(parseH265SpsNalUnit.f19949j).setMaxSubLayers(parseH265SpsNalUnit.f19940a + 1).setInitializationData(Collections.singletonList(bArr)).build();
                this.f8871d.format(build);
                P3.v.checkState(build.maxNumReorderSamples != -1);
                c0682l.setReorderingQueueSize(build.maxNumReorderSamples);
                this.f8873f = true;
            }
        }
        C0672B c0672b4 = this.f8878k;
        boolean endNalUnit = c0672b4.endNalUnit(i7);
        ParsableByteArray parsableByteArray = this.f8882o;
        if (endNalUnit) {
            parsableByteArray.reset(c0672b4.f8546d, s0.v.unescapeStream(c0672b4.f8546d, c0672b4.f8547e));
            parsableByteArray.skipBytes(5);
            c0682l.consume(j8, parsableByteArray);
        }
        C0672B c0672b5 = this.f8879l;
        if (c0672b5.endNalUnit(i7)) {
            parsableByteArray.reset(c0672b5.f8546d, s0.v.unescapeStream(c0672b5.f8546d, c0672b5.f8547e));
            parsableByteArray.skipBytes(5);
            c0682l.consume(j8, parsableByteArray);
        }
    }

    public final void b(int i2, byte[] bArr, int i7) {
        this.f8872e.readNalUnitData(bArr, i2, i7);
        if (!this.f8873f) {
            this.f8875h.appendToNalUnit(bArr, i2, i7);
            this.f8876i.appendToNalUnit(bArr, i2, i7);
            this.f8877j.appendToNalUnit(bArr, i2, i7);
        }
        this.f8878k.appendToNalUnit(bArr, i2, i7);
        this.f8879l.appendToNalUnit(bArr, i2, i7);
    }

    public final void c(int i2, int i7, long j7, long j8) {
        this.f8872e.startNalUnit(j7, i2, i7, j8, this.f8873f);
        if (!this.f8873f) {
            this.f8875h.startNalUnit(i7);
            this.f8876i.startNalUnit(i7);
            this.f8877j.startNalUnit(i7);
        }
        this.f8878k.startNalUnit(i7);
        this.f8879l.startNalUnit(i7);
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) {
        int i2;
        P3.v.checkNotNull(this.f8871d);
        Util.castNonNull(this.f8872e);
        while (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition();
            int limit = parsableByteArray.limit();
            byte[] data = parsableByteArray.getData();
            this.f8880m += parsableByteArray.bytesLeft();
            this.f8871d.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
            while (position < limit) {
                int findNalUnit = s0.v.findNalUnit(data, position, limit, this.f8874g);
                if (findNalUnit == limit) {
                    b(position, data, limit);
                    return;
                }
                int h265NalUnitType = s0.v.getH265NalUnitType(data, findNalUnit);
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
                long j7 = this.f8880m - i10;
                a(i10, i9 < 0 ? -i9 : 0, j7, this.f8881n);
                c(i10, h265NalUnitType, j7, this.f8881n);
                position = i7 + i8;
            }
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8870c = c0692w.getFormatId();
        r0 track = f3.track(c0692w.getTrackId(), 2);
        this.f8871d = track;
        this.f8872e = new C0714s(track);
        this.f8868a.createTracks(f3, c0692w);
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
        P3.v.checkNotNull(this.f8871d);
        Util.castNonNull(this.f8872e);
        if (z6) {
            this.f8868a.flush();
            a(0, 0, this.f8880m, this.f8881n);
            c(0, 48, this.f8880m, this.f8881n);
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8881n = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8880m = 0L;
        this.f8881n = androidx.media3.common.C.TIME_UNSET;
        s0.v.clearPrefixFlags(this.f8874g);
        this.f8875h.reset();
        this.f8876i.reset();
        this.f8877j.reset();
        this.f8878k.reset();
        this.f8879l.reset();
        this.f8868a.clear();
        C0714s c0714s = this.f8872e;
        if (c0714s != null) {
            c0714s.reset();
        }
    }
}

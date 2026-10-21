package A0;

import P3.v;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.J;
import v0.K;
import v0.L;
import v0.M;
import v0.N;
import v0.O;
import v0.P;
import v0.c0;
import v0.f0;
import v0.g0;
import v0.r0;

/* loaded from: classes.dex */
public final class d implements C {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f7a = new byte[42];

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8b = new ParsableByteArray(new byte[32768], 0);

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9c;

    /* renamed from: d, reason: collision with root package name */
    public final J f10d;

    /* renamed from: e, reason: collision with root package name */
    public F f11e;

    /* renamed from: f, reason: collision with root package name */
    public r0 f12f;

    /* renamed from: g, reason: collision with root package name */
    public int f13g;

    /* renamed from: h, reason: collision with root package name */
    public Metadata f14h;

    /* renamed from: i, reason: collision with root package name */
    public P f15i;

    /* renamed from: j, reason: collision with root package name */
    public int f16j;

    /* renamed from: k, reason: collision with root package name */
    public int f17k;

    /* renamed from: l, reason: collision with root package name */
    public c f18l;

    /* renamed from: m, reason: collision with root package name */
    public int f19m;

    /* renamed from: n, reason: collision with root package name */
    public long f20n;

    public d(int i2) {
        this.f9c = (i2 & 1) != 0;
        this.f10d = new J();
        this.f13g = 0;
    }

    public final void a() {
        ((r0) Util.castNonNull(this.f12f)).sampleMetadata((this.f20n * 1000000) / ((P) Util.castNonNull(this.f15i)).f20383e, 1, this.f19m, 0, null);
    }

    @Override // v0.C
    public final /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public final /* synthetic */ C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(F f3) {
        this.f11e = f3;
        this.f12f = f3.track(0, 1);
        f3.endTracks();
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        g0 f0Var;
        boolean z6;
        long j7;
        boolean z7;
        int i2 = this.f13g;
        if (i2 == 0) {
            this.f14h = M.readId3Metadata(d7, !this.f9c);
            this.f13g = 1;
            return 0;
        }
        byte[] bArr = this.f7a;
        if (i2 == 1) {
            d7.peekFully(bArr, 0, bArr.length);
            d7.resetPeekPosition();
            this.f13g = 2;
            return 0;
        }
        if (i2 == 2) {
            M.readStreamMarker(d7);
            this.f13g = 3;
            return 0;
        }
        if (i2 == 3) {
            L l7 = new L(this.f15i);
            boolean z8 = false;
            while (!z8) {
                z8 = M.readMetadataBlock(d7, l7);
                this.f15i = (P) Util.castNonNull(l7.f20374a);
            }
            v.checkNotNull(this.f15i);
            this.f16j = Math.max(this.f15i.f20381c, 6);
            ((r0) Util.castNonNull(this.f12f)).format(this.f15i.getFormat(bArr, this.f14h).buildUpon().setContainerMimeType(MimeTypes.AUDIO_FLAC).build());
            ((r0) Util.castNonNull(this.f12f)).durationUs(this.f15i.getDurationUs());
            this.f13g = 4;
            return 0;
        }
        if (i2 == 4) {
            this.f17k = M.getFrameStartMarker(d7);
            F f3 = (F) Util.castNonNull(this.f11e);
            long position = d7.getPosition();
            long length = d7.getLength();
            v.checkNotNull(this.f15i);
            P p6 = this.f15i;
            O o6 = p6.f20389k;
            if (o6 != null && o6.f20377a.length > 0) {
                f0Var = new N(p6, position);
            } else if (length == -1 || p6.f20388j <= 0) {
                f0Var = new f0(p6.getDurationUs());
            } else {
                c cVar = new c(p6, this.f17k, position, length);
                this.f18l = cVar;
                f0Var = cVar.getSeekMap();
            }
            f3.seekMap(f0Var);
            this.f13g = 5;
            return 0;
        }
        if (i2 != 5) {
            throw new IllegalStateException();
        }
        v.checkNotNull(this.f12f);
        v.checkNotNull(this.f15i);
        c cVar2 = this.f18l;
        if (cVar2 != null && cVar2.isSeeking()) {
            return this.f18l.handlePendingSeek(d7, c0Var);
        }
        if (this.f20n == -1) {
            this.f20n = K.getFirstSampleNumber(d7, this.f15i);
            return 0;
        }
        ParsableByteArray parsableByteArray = this.f8b;
        int limit = parsableByteArray.limit();
        if (limit < 32768) {
            int read = d7.read(parsableByteArray.getData(), limit, 32768 - limit);
            z6 = read == -1;
            if (!z6) {
                parsableByteArray.setLimit(limit + read);
            } else if (parsableByteArray.bytesLeft() == 0) {
                a();
                return -1;
            }
        } else {
            z6 = false;
        }
        int position2 = parsableByteArray.getPosition();
        int i7 = this.f19m;
        int i8 = this.f16j;
        if (i7 < i8) {
            parsableByteArray.skipBytes(Math.min(i8 - i7, parsableByteArray.bytesLeft()));
        }
        v.checkNotNull(this.f15i);
        int position3 = parsableByteArray.getPosition();
        while (true) {
            int limit2 = parsableByteArray.limit() - 16;
            J j8 = this.f10d;
            if (position3 <= limit2) {
                parsableByteArray.setPosition(position3);
                if (K.checkAndReadFrameHeader(parsableByteArray, this.f15i, this.f17k, j8)) {
                    parsableByteArray.setPosition(position3);
                    j7 = j8.f20373a;
                    break;
                }
                position3++;
            } else {
                if (z6) {
                    while (position3 <= parsableByteArray.limit() - this.f16j) {
                        parsableByteArray.setPosition(position3);
                        try {
                            z7 = K.checkAndReadFrameHeader(parsableByteArray, this.f15i, this.f17k, j8);
                        } catch (IndexOutOfBoundsException unused) {
                            z7 = false;
                        }
                        if (parsableByteArray.getPosition() > parsableByteArray.limit()) {
                            z7 = false;
                        }
                        if (z7) {
                            parsableByteArray.setPosition(position3);
                            j7 = j8.f20373a;
                            break;
                        }
                        position3++;
                    }
                    parsableByteArray.setPosition(parsableByteArray.limit());
                } else {
                    parsableByteArray.setPosition(position3);
                }
                j7 = -1;
            }
        }
        int position4 = parsableByteArray.getPosition() - position2;
        parsableByteArray.setPosition(position2);
        this.f12f.sampleData(parsableByteArray, position4);
        this.f19m += position4;
        if (j7 != -1) {
            a();
            this.f19m = 0;
            this.f20n = j7;
        }
        int length2 = parsableByteArray.getData().length - parsableByteArray.limit();
        if (parsableByteArray.bytesLeft() < 16 && length2 < 16) {
            int bytesLeft = parsableByteArray.bytesLeft();
            System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray.getData(), 0, bytesLeft);
            parsableByteArray.setPosition(0);
            parsableByteArray.setLimit(bytesLeft);
        }
        return 0;
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        if (j7 == 0) {
            this.f13g = 0;
        } else {
            c cVar = this.f18l;
            if (cVar != null) {
                cVar.setSeekTargetUs(j8);
            }
        }
        this.f20n = j8 != 0 ? -1L : 0L;
        this.f19m = 0;
        this.f8b.reset(0);
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        M.peekId3Metadata(d7, false);
        return M.checkAndPeekStreamMarker(d7);
    }

    @Override // v0.C
    public void release() {
    }
}

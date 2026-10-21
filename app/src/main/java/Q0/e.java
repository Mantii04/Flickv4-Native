package Q0;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.g0;
import v0.r0;

/* loaded from: classes.dex */
public final class e implements C {

    /* renamed from: a, reason: collision with root package name */
    public F f2762a;

    /* renamed from: b, reason: collision with root package name */
    public l f2763b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2764c;

    public final boolean a(D d7) {
        g gVar = new g();
        if (gVar.populate(d7, true) && (gVar.f2770a & 2) == 2) {
            int min = Math.min(gVar.f2774e, 8);
            ParsableByteArray parsableByteArray = new ParsableByteArray(min);
            d7.peekFully(parsableByteArray.getData(), 0, min);
            parsableByteArray.setPosition(0);
            if (d.verifyBitstreamType(parsableByteArray)) {
                this.f2763b = new d();
            } else {
                parsableByteArray.setPosition(0);
                if (n.verifyBitstreamType(parsableByteArray)) {
                    this.f2763b = new n();
                } else {
                    parsableByteArray.setPosition(0);
                    if (i.verifyBitstreamType(parsableByteArray)) {
                        this.f2763b = new i();
                    }
                }
            }
            return true;
        }
        return false;
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
        this.f2762a = f3;
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        int i2;
        v.checkNotNull(this.f2762a);
        if (this.f2763b == null) {
            if (!a(d7)) {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            d7.resetPeekPosition();
        }
        if (!this.f2764c) {
            r0 track = this.f2762a.track(0, 1);
            this.f2762a.endTracks();
            l lVar = this.f2763b;
            lVar.f2784c = this.f2762a;
            lVar.f2783b = track;
            lVar.reset(true);
            this.f2764c = true;
        }
        l lVar2 = this.f2763b;
        v.checkNotNull(lVar2.f2783b);
        Util.castNonNull(lVar2.f2784c);
        int i7 = lVar2.f2789h;
        f fVar = lVar2.f2782a;
        if (i7 == 0) {
            while (fVar.populate(d7)) {
                lVar2.f2792k = d7.getPosition() - lVar2.f2787f;
                if (!lVar2.readHeaders(fVar.getPayload(), lVar2.f2787f, lVar2.f2791j)) {
                    Format format = lVar2.f2791j.f2780a;
                    lVar2.f2790i = format.sampleRate;
                    if (!lVar2.f2794m) {
                        lVar2.f2783b.format(format);
                        lVar2.f2794m = true;
                    }
                    c cVar = lVar2.f2791j.f2781b;
                    if (cVar != null) {
                        lVar2.f2785d = cVar;
                    } else {
                        if (d7.getLength() != -1) {
                            g pageHeader = fVar.getPageHeader();
                            i2 = 2;
                            lVar2.f2785d = new b(lVar2, lVar2.f2787f, d7.getLength(), pageHeader.f2773d + pageHeader.f2774e, pageHeader.f2771b, (pageHeader.f2770a & 4) != 0);
                            lVar2.f2789h = i2;
                            fVar.trimPayload();
                            return 0;
                        }
                        lVar2.f2785d = new k();
                    }
                    i2 = 2;
                    lVar2.f2789h = i2;
                    fVar.trimPayload();
                    return 0;
                }
                lVar2.f2787f = d7.getPosition();
            }
            lVar2.f2789h = 3;
            return -1;
        }
        if (i7 == 1) {
            d7.skipFully((int) lVar2.f2787f);
            lVar2.f2789h = 2;
            return 0;
        }
        if (i7 != 2) {
            if (i7 == 3) {
                return -1;
            }
            throw new IllegalStateException();
        }
        Util.castNonNull(lVar2.f2785d);
        long read = lVar2.f2785d.read(d7);
        if (read >= 0) {
            c0Var.f20439a = read;
            return 1;
        }
        if (read < -1) {
            lVar2.onSeekEnd(-(read + 2));
        }
        if (!lVar2.f2793l) {
            g0 g0Var = (g0) v.checkNotNull(lVar2.f2785d.createSeekMap());
            lVar2.f2784c.seekMap(g0Var);
            lVar2.f2783b.durationUs(g0Var.getDurationUs());
            lVar2.f2793l = true;
        }
        if (lVar2.f2792k <= 0 && !fVar.populate(d7)) {
            lVar2.f2789h = 3;
            return -1;
        }
        lVar2.f2792k = 0L;
        ParsableByteArray payload = fVar.getPayload();
        long preparePayload = lVar2.preparePayload(payload);
        if (preparePayload >= 0) {
            long j7 = lVar2.f2788g;
            if (j7 + preparePayload >= lVar2.f2786e) {
                long convertGranuleToTime = lVar2.convertGranuleToTime(j7);
                lVar2.f2783b.sampleData(payload, payload.limit());
                lVar2.f2783b.sampleMetadata(convertGranuleToTime, 1, payload.limit(), 0, null);
                lVar2.f2786e = -1L;
            }
        }
        lVar2.f2788g += preparePayload;
        return 0;
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        l lVar = this.f2763b;
        if (lVar != null) {
            lVar.f2782a.reset();
            if (j7 == 0) {
                lVar.reset(!lVar.f2793l);
            } else if (lVar.f2789h != 0) {
                lVar.f2786e = lVar.convertTimeToGranule(j8);
                ((h) Util.castNonNull(lVar.f2785d)).startSeek(lVar.f2786e);
                lVar.f2789h = 2;
            }
        }
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        try {
            return a(d7);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // v0.C
    public void release() {
    }
}

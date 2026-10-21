package v0;

import java.io.IOException;

/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f20524a = new byte[10];

    /* renamed from: b, reason: collision with root package name */
    public boolean f20525b;

    /* renamed from: c, reason: collision with root package name */
    public int f20526c;

    /* renamed from: d, reason: collision with root package name */
    public long f20527d;

    /* renamed from: e, reason: collision with root package name */
    public int f20528e;

    /* renamed from: f, reason: collision with root package name */
    public int f20529f;

    /* renamed from: g, reason: collision with root package name */
    public int f20530g;

    public void outputPendingSampleMetadata(r0 r0Var, q0 q0Var) {
        if (this.f20526c > 0) {
            r0Var.sampleMetadata(this.f20527d, this.f20528e, this.f20529f, this.f20530g, q0Var);
            this.f20526c = 0;
        }
    }

    public void reset() {
        this.f20525b = false;
        this.f20526c = 0;
    }

    public void sampleMetadata(r0 r0Var, long j7, int i2, int i7, int i8, q0 q0Var) {
        P3.v.checkState(this.f20530g <= i7 + i8, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f20525b) {
            int i9 = this.f20526c;
            int i10 = i9 + 1;
            this.f20526c = i10;
            if (i9 == 0) {
                this.f20527d = j7;
                this.f20528e = i2;
                this.f20529f = 0;
            }
            this.f20529f += i7;
            this.f20530g = i8;
            if (i10 >= 16) {
                outputPendingSampleMetadata(r0Var, q0Var);
            }
        }
    }

    public void startSample(D d7) throws IOException {
        if (this.f20525b) {
            return;
        }
        byte[] bArr = this.f20524a;
        d7.peekFully(bArr, 0, 10);
        d7.resetPeekPosition();
        if (AbstractC1720d.parseTrueHdSyncframeAudioSampleCount(bArr) == 0) {
            return;
        }
        this.f20525b = true;
    }
}

package x0;

import P3.v;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.Arrays;
import v0.D;
import v0.e0;
import v0.h0;
import v0.r0;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final f f20752a;

    /* renamed from: b, reason: collision with root package name */
    public final r0 f20753b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20754c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20755d;

    /* renamed from: e, reason: collision with root package name */
    public final long f20756e;

    /* renamed from: f, reason: collision with root package name */
    public int f20757f;

    /* renamed from: g, reason: collision with root package name */
    public int f20758g;

    /* renamed from: h, reason: collision with root package name */
    public int f20759h;

    /* renamed from: i, reason: collision with root package name */
    public int f20760i;

    /* renamed from: j, reason: collision with root package name */
    public int f20761j;

    /* renamed from: k, reason: collision with root package name */
    public int f20762k;

    /* renamed from: l, reason: collision with root package name */
    public long f20763l;

    /* renamed from: m, reason: collision with root package name */
    public long[] f20764m;

    /* renamed from: n, reason: collision with root package name */
    public int[] f20765n;

    public g(int i2, f fVar, r0 r0Var) {
        this.f20752a = fVar;
        int trackType = fVar.getTrackType();
        boolean z6 = true;
        if (trackType != 1 && trackType != 2) {
            z6 = false;
        }
        v.checkArgument(z6);
        int i7 = (((i2 % 10) + 48) << 8) | ((i2 / 10) + 48);
        this.f20754c = (trackType == 2 ? 1667497984 : 1651965952) | i7;
        this.f20756e = fVar.getDurationUs();
        this.f20753b = r0Var;
        this.f20755d = trackType == 2 ? i7 | 1650720768 : -1;
        this.f20763l = -1L;
        this.f20764m = new long[512];
        this.f20765n = new int[512];
        this.f20757f = fVar.f20749d;
    }

    public final h0 a(int i2) {
        return new h0(getFrameDurationUs() * this.f20765n[i2], this.f20764m[i2]);
    }

    public void advanceCurrentChunk() {
        this.f20760i++;
    }

    public void appendIndexChunk(long j7, boolean z6) {
        if (this.f20763l == -1) {
            this.f20763l = j7;
        }
        if (z6) {
            if (this.f20762k == this.f20765n.length) {
                long[] jArr = this.f20764m;
                this.f20764m = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.f20765n;
                this.f20765n = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.f20764m;
            int i2 = this.f20762k;
            jArr2[i2] = j7;
            this.f20765n[i2] = this.f20761j;
            this.f20762k = i2 + 1;
        }
        this.f20761j++;
    }

    public void commitIndex() {
        int i2;
        this.f20764m = Arrays.copyOf(this.f20764m, this.f20762k);
        this.f20765n = Arrays.copyOf(this.f20765n, this.f20762k);
        if (!isAudio() || this.f20752a.f20751f == 0 || (i2 = this.f20762k) <= 0) {
            return;
        }
        this.f20757f = i2;
    }

    public long getCurrentChunkTimestampUs() {
        return (this.f20756e * this.f20760i) / this.f20757f;
    }

    public long getFrameDurationUs() {
        return (this.f20756e * 1) / this.f20757f;
    }

    public e0 getSeekPoints(long j7) {
        if (this.f20762k == 0) {
            return new e0(new h0(0L, this.f20763l));
        }
        int frameDurationUs = (int) (j7 / getFrameDurationUs());
        int binarySearchFloor = Util.binarySearchFloor(this.f20765n, frameDurationUs, true, true);
        if (this.f20765n[binarySearchFloor] == frameDurationUs) {
            return new e0(a(binarySearchFloor));
        }
        h0 a7 = a(binarySearchFloor);
        int i2 = binarySearchFloor + 1;
        return i2 < this.f20764m.length ? new e0(a7, a(i2)) : new e0(a7);
    }

    public boolean handlesChunkId(int i2) {
        return this.f20754c == i2 || this.f20755d == i2;
    }

    public boolean isAudio() {
        return (this.f20754c & 1651965952) == 1651965952;
    }

    public boolean isCurrentFrameAKeyFrame() {
        return Arrays.binarySearch(this.f20765n, this.f20760i) >= 0;
    }

    public boolean onChunkData(D d7) throws IOException {
        int i2 = this.f20759h;
        int sampleData = i2 - this.f20753b.sampleData((DataReader) d7, i2, false);
        this.f20759h = sampleData;
        boolean z6 = sampleData == 0;
        if (z6) {
            if (this.f20758g > 0) {
                this.f20753b.sampleMetadata(getCurrentChunkTimestampUs(), isCurrentFrameAKeyFrame() ? 1 : 0, this.f20758g, 0, null);
            }
            advanceCurrentChunk();
        }
        return z6;
    }

    public void onChunkStart(int i2) {
        this.f20758g = i2;
        this.f20759h = i2;
    }

    public void seekToPosition(long j7) {
        if (this.f20762k == 0) {
            this.f20760i = 0;
        } else {
            this.f20760i = this.f20765n[Util.binarySearchFloor(this.f20764m, j7, true, true)];
        }
    }
}

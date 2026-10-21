package P0;

import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;

/* loaded from: classes.dex */
public final class L {

    /* renamed from: a, reason: collision with root package name */
    public o f2527a;

    /* renamed from: b, reason: collision with root package name */
    public long f2528b;

    /* renamed from: c, reason: collision with root package name */
    public long f2529c;

    /* renamed from: d, reason: collision with root package name */
    public int f2530d;

    /* renamed from: e, reason: collision with root package name */
    public int f2531e;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2537k;

    /* renamed from: m, reason: collision with root package name */
    public K f2539m;

    /* renamed from: o, reason: collision with root package name */
    public boolean f2541o;

    /* renamed from: p, reason: collision with root package name */
    public long f2542p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f2543q;

    /* renamed from: f, reason: collision with root package name */
    public long[] f2532f = new long[0];

    /* renamed from: g, reason: collision with root package name */
    public int[] f2533g = new int[0];

    /* renamed from: h, reason: collision with root package name */
    public int[] f2534h = new int[0];

    /* renamed from: i, reason: collision with root package name */
    public long[] f2535i = new long[0];

    /* renamed from: j, reason: collision with root package name */
    public boolean[] f2536j = new boolean[0];

    /* renamed from: l, reason: collision with root package name */
    public boolean[] f2538l = new boolean[0];

    /* renamed from: n, reason: collision with root package name */
    public final ParsableByteArray f2540n = new ParsableByteArray();

    public void fillEncryptionData(v0.D d7) throws IOException {
        ParsableByteArray parsableByteArray = this.f2540n;
        d7.readFully(parsableByteArray.getData(), 0, parsableByteArray.limit());
        parsableByteArray.setPosition(0);
        this.f2541o = false;
    }

    public long getSamplePresentationTimeUs(int i2) {
        return this.f2535i[i2];
    }

    public void initEncryptionData(int i2) {
        this.f2540n.reset(i2);
        this.f2537k = true;
        this.f2541o = true;
    }

    public void initTables(int i2, int i7) {
        this.f2530d = i2;
        this.f2531e = i7;
        if (this.f2533g.length < i2) {
            this.f2532f = new long[i2];
            this.f2533g = new int[i2];
        }
        if (this.f2534h.length < i7) {
            int i8 = (i7 * 125) / 100;
            this.f2534h = new int[i8];
            this.f2535i = new long[i8];
            this.f2536j = new boolean[i8];
            this.f2538l = new boolean[i8];
        }
    }

    public void reset() {
        this.f2530d = 0;
        this.f2542p = 0L;
        this.f2543q = false;
        this.f2537k = false;
        this.f2541o = false;
        this.f2539m = null;
    }

    public boolean sampleHasSubsampleEncryptionTable(int i2) {
        return this.f2537k && this.f2538l[i2];
    }

    public void fillEncryptionData(ParsableByteArray parsableByteArray) {
        ParsableByteArray parsableByteArray2 = this.f2540n;
        parsableByteArray.readBytes(parsableByteArray2.getData(), 0, parsableByteArray2.limit());
        parsableByteArray2.setPosition(0);
        this.f2541o = false;
    }
}

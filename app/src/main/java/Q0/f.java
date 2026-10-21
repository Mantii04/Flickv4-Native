package Q0;

import P3.v;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.Arrays;
import v0.D;
import v0.G;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final g f2765a = new g();

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f2766b = new ParsableByteArray(new byte[65025], 0);

    /* renamed from: c, reason: collision with root package name */
    public int f2767c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f2768d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2769e;

    public final int a(int i2) {
        int i7;
        int i8 = 0;
        this.f2768d = 0;
        do {
            int i9 = this.f2768d;
            int i10 = i2 + i9;
            g gVar = this.f2765a;
            if (i10 >= gVar.f2772c) {
                break;
            }
            int[] iArr = gVar.f2775f;
            this.f2768d = i9 + 1;
            i7 = iArr[i9 + i2];
            i8 += i7;
        } while (i7 == 255);
        return i8;
    }

    public g getPageHeader() {
        return this.f2765a;
    }

    public ParsableByteArray getPayload() {
        return this.f2766b;
    }

    public boolean populate(D d7) throws IOException {
        int i2;
        v.checkState(d7 != null);
        boolean z6 = this.f2769e;
        ParsableByteArray parsableByteArray = this.f2766b;
        if (z6) {
            this.f2769e = false;
            parsableByteArray.reset(0);
        }
        while (!this.f2769e) {
            int i7 = this.f2767c;
            g gVar = this.f2765a;
            if (i7 < 0) {
                if (!gVar.skipToNextPage(d7) || !gVar.populate(d7, true)) {
                    return false;
                }
                int i8 = gVar.f2773d;
                if ((gVar.f2770a & 1) == 1 && parsableByteArray.limit() == 0) {
                    i8 += a(0);
                    i2 = this.f2768d;
                } else {
                    i2 = 0;
                }
                if (!G.skipFullyQuietly(d7, i8)) {
                    return false;
                }
                this.f2767c = i2;
            }
            int a7 = a(this.f2767c);
            int i9 = this.f2767c + this.f2768d;
            if (a7 > 0) {
                parsableByteArray.ensureCapacity(parsableByteArray.limit() + a7);
                if (!G.readFullyQuietly(d7, parsableByteArray.getData(), parsableByteArray.limit(), a7)) {
                    return false;
                }
                parsableByteArray.setLimit(parsableByteArray.limit() + a7);
                this.f2769e = gVar.f2775f[i9 + (-1)] != 255;
            }
            if (i9 == gVar.f2772c) {
                i9 = -1;
            }
            this.f2767c = i9;
        }
        return true;
    }

    public void reset() {
        this.f2765a.reset();
        this.f2766b.reset(0);
        this.f2767c = -1;
        this.f2769e = false;
    }

    public void trimPayload() {
        ParsableByteArray parsableByteArray = this.f2766b;
        if (parsableByteArray.getData().length == 65025) {
            return;
        }
        parsableByteArray.reset(Arrays.copyOf(parsableByteArray.getData(), Math.max(65025, parsableByteArray.limit())), parsableByteArray.limit());
    }
}

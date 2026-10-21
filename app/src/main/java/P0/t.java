package P0;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import v0.r0;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f2616a;

    /* renamed from: d, reason: collision with root package name */
    public M f2619d;

    /* renamed from: e, reason: collision with root package name */
    public o f2620e;

    /* renamed from: f, reason: collision with root package name */
    public int f2621f;

    /* renamed from: g, reason: collision with root package name */
    public int f2622g;

    /* renamed from: h, reason: collision with root package name */
    public int f2623h;

    /* renamed from: i, reason: collision with root package name */
    public int f2624i;

    /* renamed from: j, reason: collision with root package name */
    public final Format f2625j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f2628m;

    /* renamed from: b, reason: collision with root package name */
    public final L f2617b = new L();

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f2618c = new ParsableByteArray();

    /* renamed from: k, reason: collision with root package name */
    public final ParsableByteArray f2626k = new ParsableByteArray(1);

    /* renamed from: l, reason: collision with root package name */
    public final ParsableByteArray f2627l = new ParsableByteArray();

    public t(r0 r0Var, M m7, o oVar, Format format) {
        this.f2616a = r0Var;
        this.f2619d = m7;
        this.f2620e = oVar;
        this.f2625j = format;
        reset(m7, oVar);
    }

    public int getCurrentSampleFlags() {
        int i2 = !this.f2628m ? this.f2619d.f2550g[this.f2621f] : this.f2617b.f2536j[this.f2621f] ? 1 : 0;
        return getEncryptionBoxIfEncrypted() != null ? i2 | 1073741824 : i2;
    }

    public long getCurrentSampleOffset() {
        return !this.f2628m ? this.f2619d.f2546c[this.f2621f] : this.f2617b.f2532f[this.f2623h];
    }

    public long getCurrentSamplePresentationTimeUs() {
        return !this.f2628m ? this.f2619d.f2549f[this.f2621f] : this.f2617b.getSamplePresentationTimeUs(this.f2621f);
    }

    public int getCurrentSampleSize() {
        return !this.f2628m ? this.f2619d.f2547d[this.f2621f] : this.f2617b.f2534h[this.f2621f];
    }

    public K getEncryptionBoxIfEncrypted() {
        if (!this.f2628m) {
            return null;
        }
        L l7 = this.f2617b;
        int i2 = ((o) Util.castNonNull(l7.f2527a)).f2601a;
        K k7 = l7.f2539m;
        if (k7 == null) {
            k7 = this.f2619d.f2544a.getSampleDescriptionEncryptionBox(i2);
        }
        if (k7 == null || !k7.f2522a) {
            return null;
        }
        return k7;
    }

    public boolean next() {
        this.f2621f++;
        if (!this.f2628m) {
            return false;
        }
        int i2 = this.f2622g + 1;
        this.f2622g = i2;
        int[] iArr = this.f2617b.f2533g;
        int i7 = this.f2623h;
        if (i2 != iArr[i7]) {
            return true;
        }
        this.f2623h = i7 + 1;
        this.f2622g = 0;
        return false;
    }

    public int outputSampleEncryptionData(int i2, int i7) {
        ParsableByteArray parsableByteArray;
        K encryptionBoxIfEncrypted = getEncryptionBoxIfEncrypted();
        if (encryptionBoxIfEncrypted == null) {
            return 0;
        }
        L l7 = this.f2617b;
        int i8 = encryptionBoxIfEncrypted.f2525d;
        if (i8 != 0) {
            parsableByteArray = l7.f2540n;
        } else {
            byte[] bArr = (byte[]) Util.castNonNull(encryptionBoxIfEncrypted.f2526e);
            int length = bArr.length;
            ParsableByteArray parsableByteArray2 = this.f2627l;
            parsableByteArray2.reset(bArr, length);
            i8 = bArr.length;
            parsableByteArray = parsableByteArray2;
        }
        boolean sampleHasSubsampleEncryptionTable = l7.sampleHasSubsampleEncryptionTable(this.f2621f);
        boolean z6 = sampleHasSubsampleEncryptionTable || i7 != 0;
        ParsableByteArray parsableByteArray3 = this.f2626k;
        parsableByteArray3.getData()[0] = (byte) ((z6 ? 128 : 0) | i8);
        parsableByteArray3.setPosition(0);
        r0 r0Var = this.f2616a;
        r0Var.sampleData(parsableByteArray3, 1, 1);
        r0Var.sampleData(parsableByteArray, i8, 1);
        if (!z6) {
            return i8 + 1;
        }
        ParsableByteArray parsableByteArray4 = this.f2618c;
        if (!sampleHasSubsampleEncryptionTable) {
            parsableByteArray4.reset(8);
            byte[] data = parsableByteArray4.getData();
            data[0] = 0;
            data[1] = 1;
            data[2] = (byte) ((i7 >> 8) & 255);
            data[3] = (byte) (i7 & 255);
            data[4] = (byte) ((i2 >> 24) & 255);
            data[5] = (byte) ((i2 >> 16) & 255);
            data[6] = (byte) ((i2 >> 8) & 255);
            data[7] = (byte) (i2 & 255);
            r0Var.sampleData(parsableByteArray4, 8, 1);
            return i8 + 9;
        }
        ParsableByteArray parsableByteArray5 = l7.f2540n;
        int readUnsignedShort = parsableByteArray5.readUnsignedShort();
        parsableByteArray5.skipBytes(-2);
        int i9 = (readUnsignedShort * 6) + 2;
        if (i7 != 0) {
            parsableByteArray4.reset(i9);
            byte[] data2 = parsableByteArray4.getData();
            parsableByteArray5.readBytes(data2, 0, i9);
            int i10 = (((data2[2] & 255) << 8) | (data2[3] & 255)) + i7;
            data2[2] = (byte) ((i10 >> 8) & 255);
            data2[3] = (byte) (i10 & 255);
        } else {
            parsableByteArray4 = parsableByteArray5;
        }
        r0Var.sampleData(parsableByteArray4, i9, 1);
        return i8 + 1 + i9;
    }

    public void reset(M m7, o oVar) {
        this.f2619d = m7;
        this.f2620e = oVar;
        this.f2616a.format(this.f2625j);
        resetFragmentInfo();
    }

    public void resetFragmentInfo() {
        this.f2617b.reset();
        this.f2621f = 0;
        this.f2623h = 0;
        this.f2622g = 0;
        this.f2624i = 0;
        this.f2628m = false;
    }

    public void seek(long j7) {
        int i2 = this.f2621f;
        while (true) {
            L l7 = this.f2617b;
            if (i2 >= l7.f2531e || l7.getSamplePresentationTimeUs(i2) > j7) {
                return;
            }
            if (l7.f2536j[i2]) {
                this.f2624i = i2;
            }
            i2++;
        }
    }

    public void skipSampleEncryptionData() {
        K encryptionBoxIfEncrypted = getEncryptionBoxIfEncrypted();
        if (encryptionBoxIfEncrypted == null) {
            return;
        }
        L l7 = this.f2617b;
        ParsableByteArray parsableByteArray = l7.f2540n;
        int i2 = encryptionBoxIfEncrypted.f2525d;
        if (i2 != 0) {
            parsableByteArray.skipBytes(i2);
        }
        if (l7.sampleHasSubsampleEncryptionTable(this.f2621f)) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort() * 6);
        }
    }

    public void updateDrmInitData(DrmInitData drmInitData) {
        K sampleDescriptionEncryptionBox = this.f2619d.f2544a.getSampleDescriptionEncryptionBox(((o) Util.castNonNull(this.f2617b.f2527a)).f2601a);
        this.f2616a.format(this.f2625j.buildUpon().setDrmInitData(drmInitData.copyWithSchemeType(sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.f2523b : null)).build());
    }
}

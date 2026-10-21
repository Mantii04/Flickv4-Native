package u0;

import P3.v;
import android.media.MediaCodec;
import android.os.Build;

/* renamed from: u0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1663d {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f20232a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f20233b;

    /* renamed from: c, reason: collision with root package name */
    public int f20234c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f20235d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f20236e;

    /* renamed from: f, reason: collision with root package name */
    public int f20237f;

    /* renamed from: g, reason: collision with root package name */
    public int f20238g;

    /* renamed from: h, reason: collision with root package name */
    public int f20239h;

    /* renamed from: i, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f20240i;

    /* renamed from: j, reason: collision with root package name */
    public final C1662c f20241j;

    public C1663d() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f20240i = cryptoInfo;
        this.f20241j = Build.VERSION.SDK_INT >= 24 ? new C1662c(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo getFrameworkCryptoInfo() {
        return this.f20240i;
    }

    public void increaseClearDataFirstSubSampleBy(int i2) {
        if (i2 == 0) {
            return;
        }
        if (this.f20235d == null) {
            int[] iArr = new int[1];
            this.f20235d = iArr;
            this.f20240i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f20235d;
        iArr2[0] = iArr2[0] + i2;
    }

    public void set(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i7, int i8, int i9) {
        this.f20237f = i2;
        this.f20235d = iArr;
        this.f20236e = iArr2;
        this.f20233b = bArr;
        this.f20232a = bArr2;
        this.f20234c = i7;
        this.f20238g = i8;
        this.f20239h = i9;
        MediaCodec.CryptoInfo cryptoInfo = this.f20240i;
        cryptoInfo.numSubSamples = i2;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i7;
        if (Build.VERSION.SDK_INT >= 24) {
            C1662c c1662c = (C1662c) v.checkNotNull(this.f20241j);
            c1662c.f20231b.set(i8, i9);
            c1662c.f20230a.setPattern(c1662c.f20231b);
        }
    }
}

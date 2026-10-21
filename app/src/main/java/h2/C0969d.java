package h2;

import java.util.ArrayList;
import java.util.Collections;

/* renamed from: h2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0969d {

    /* renamed from: e, reason: collision with root package name */
    public static final C0968c f16489e = new C0968c();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f16490a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f16491b = new ArrayList(64);

    /* renamed from: c, reason: collision with root package name */
    public int f16492c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final int f16493d;

    public C0969d(int i2) {
        this.f16493d = i2;
    }

    public final synchronized void a() {
        while (this.f16492c > this.f16493d) {
            byte[] bArr = (byte[]) this.f16490a.remove(0);
            this.f16491b.remove(bArr);
            this.f16492c -= bArr.length;
        }
    }

    public synchronized byte[] getBuf(int i2) {
        for (int i7 = 0; i7 < this.f16491b.size(); i7++) {
            byte[] bArr = (byte[]) this.f16491b.get(i7);
            if (bArr.length >= i2) {
                this.f16492c -= bArr.length;
                this.f16491b.remove(i7);
                this.f16490a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i2];
    }

    public synchronized void returnBuf(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f16493d) {
                this.f16490a.add(bArr);
                int binarySearch = Collections.binarySearch(this.f16491b, bArr, f16489e);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.f16491b.add(binarySearch, bArr);
                this.f16492c += bArr.length;
                a();
            }
        }
    }
}

package y2;

import android.graphics.Bitmap;
import k2.InterfaceC1096a;
import o2.C1438l;
import o2.InterfaceC1428b;
import o2.InterfaceC1430d;

/* renamed from: y2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1880b implements InterfaceC1096a {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1430d f21061a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1428b f21062b;

    public C1880b(InterfaceC1430d interfaceC1430d, InterfaceC1428b interfaceC1428b) {
        this.f21061a = interfaceC1430d;
        this.f21062b = interfaceC1428b;
    }

    public Bitmap obtain(int i2, int i7, Bitmap.Config config) {
        return this.f21061a.getDirty(i2, i7, config);
    }

    public byte[] obtainByteArray(int i2) {
        InterfaceC1428b interfaceC1428b = this.f21062b;
        return interfaceC1428b == null ? new byte[i2] : (byte[]) ((C1438l) interfaceC1428b).get(i2, byte[].class);
    }

    public int[] obtainIntArray(int i2) {
        InterfaceC1428b interfaceC1428b = this.f21062b;
        return interfaceC1428b == null ? new int[i2] : (int[]) ((C1438l) interfaceC1428b).get(i2, int[].class);
    }

    public void release(Bitmap bitmap) {
        this.f21061a.put(bitmap);
    }

    public void release(byte[] bArr) {
        InterfaceC1428b interfaceC1428b = this.f21062b;
        if (interfaceC1428b == null) {
            return;
        }
        ((C1438l) interfaceC1428b).put(bArr);
    }

    public void release(int[] iArr) {
        InterfaceC1428b interfaceC1428b = this.f21062b;
        if (interfaceC1428b == null) {
            return;
        }
        ((C1438l) interfaceC1428b).put(iArr);
    }
}

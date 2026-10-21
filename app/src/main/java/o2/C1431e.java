package o2;

import android.graphics.Bitmap;

/* renamed from: o2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1431e implements InterfaceC1430d {
    @Override // o2.InterfaceC1430d
    public Bitmap get(int i2, int i7, Bitmap.Config config) {
        return Bitmap.createBitmap(i2, i7, config);
    }

    @Override // o2.InterfaceC1430d
    public Bitmap getDirty(int i2, int i7, Bitmap.Config config) {
        return get(i2, i7, config);
    }

    @Override // o2.InterfaceC1430d
    public void put(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // o2.InterfaceC1430d
    public void clearMemory() {
    }

    @Override // o2.InterfaceC1430d
    public void trimMemory(int i2) {
    }
}

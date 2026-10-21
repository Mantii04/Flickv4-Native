package u2;

import android.graphics.Bitmap;
import java.io.IOException;
import o2.InterfaceC1430d;

/* loaded from: classes.dex */
public final class M implements InterfaceC1695w {

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.load.resource.bitmap.a f20269a;

    /* renamed from: b, reason: collision with root package name */
    public final G2.f f20270b;

    public M(com.bumptech.glide.load.resource.bitmap.a aVar, G2.f fVar) {
        this.f20269a = aVar;
        this.f20270b = fVar;
    }

    @Override // u2.InterfaceC1695w
    public void onDecodeComplete(InterfaceC1430d interfaceC1430d, Bitmap bitmap) throws IOException {
        IOException exception = this.f20270b.getException();
        if (exception != null) {
            if (bitmap == null) {
                throw exception;
            }
            interfaceC1430d.put(bitmap);
            throw exception;
        }
    }

    @Override // u2.InterfaceC1695w
    public void onObtainBounds() {
        this.f20269a.fixMarkLimit();
    }
}

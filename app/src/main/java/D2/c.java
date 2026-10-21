package D2;

import G2.t;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class c implements k {

    /* renamed from: b, reason: collision with root package name */
    public final int f868b;

    /* renamed from: e, reason: collision with root package name */
    public final int f869e;

    /* renamed from: f, reason: collision with root package name */
    public C2.c f870f;

    public c() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // D2.k
    public final C2.c getRequest() {
        return this.f870f;
    }

    @Override // D2.k
    public final void getSize(j jVar) {
        ((com.bumptech.glide.request.a) jVar).onSizeReady(this.f868b, this.f869e);
    }

    @Override // D2.k
    public final void setRequest(C2.c cVar) {
        this.f870f = cVar;
    }

    public c(int i2, int i7) {
        if (!t.isValidDimensions(i2, i7)) {
            throw new IllegalArgumentException(A.i.e(i2, i7, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ", " and height: "));
        }
        this.f868b = i2;
        this.f869e = i7;
    }

    @Override // com.bumptech.glide.manager.l
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.l
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.l
    public void onStop() {
    }

    @Override // D2.k
    public void onLoadFailed(Drawable drawable) {
    }

    @Override // D2.k
    public void onLoadStarted(Drawable drawable) {
    }

    @Override // D2.k
    public final void removeCallback(j jVar) {
    }
}

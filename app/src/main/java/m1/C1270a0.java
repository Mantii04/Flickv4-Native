package m1;

import android.view.View;

/* renamed from: m1.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1270a0 {

    /* renamed from: a, reason: collision with root package name */
    public int f18346a;

    /* renamed from: b, reason: collision with root package name */
    public int f18347b;

    public C1270a0 setFrom(B0 b02) {
        return setFrom(b02, 0);
    }

    public C1270a0 setFrom(B0 b02, int i2) {
        View view = b02.f18217a;
        this.f18346a = view.getLeft();
        this.f18347b = view.getTop();
        view.getRight();
        view.getBottom();
        return this;
    }
}

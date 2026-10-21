package o3;

import android.graphics.Rect;
import android.view.View;
import m1.C1288j0;

/* renamed from: o3.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1456i {

    /* renamed from: a, reason: collision with root package name */
    public final int f19099a;

    public AbstractC1456i(int i2) {
        this.f19099a = i2;
    }

    public abstract int a();

    public abstract int b();

    public abstract int c();

    public abstract int d();

    public abstract int e();

    public abstract int f();

    public abstract float getMaskMargins(C1288j0 c1288j0);

    public abstract void layoutDecoratedWithMargins(View view, int i2, int i7);

    public abstract void offsetChild(View view, Rect rect, float f3, float f7);
}

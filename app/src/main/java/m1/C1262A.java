package m1;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: m1.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1262A extends C1288j0 {

    /* renamed from: e, reason: collision with root package name */
    public int f18205e;

    /* renamed from: f, reason: collision with root package name */
    public int f18206f;

    public C1262A(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18205e = -1;
        this.f18206f = 0;
    }

    public int getSpanIndex() {
        return this.f18205e;
    }

    public int getSpanSize() {
        return this.f18206f;
    }

    public C1262A(int i2, int i7) {
        super(i2, i7);
        this.f18205e = -1;
        this.f18206f = 0;
    }

    public C1262A(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f18205e = -1;
        this.f18206f = 0;
    }

    public C1262A(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f18205e = -1;
        this.f18206f = 0;
    }
}

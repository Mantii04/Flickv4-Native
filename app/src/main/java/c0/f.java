package c0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes.dex */
public final class f extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public final int f8529a;

    /* renamed from: b, reason: collision with root package name */
    public float f8530b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8531c;

    /* renamed from: d, reason: collision with root package name */
    public int f8532d;

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8529a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f5936N);
        this.f8529a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    public f(int i2, int i7) {
        super(i2, i7);
        this.f8529a = 0;
    }

    public f(f fVar) {
        super((ViewGroup.MarginLayoutParams) fVar);
        this.f8529a = 0;
        this.f8529a = fVar.f8529a;
    }

    public f(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f8529a = 0;
    }

    public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f8529a = 0;
    }
}

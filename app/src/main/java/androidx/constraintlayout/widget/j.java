package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public int f5485a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f5486b = 0;

    /* renamed from: c, reason: collision with root package name */
    public float f5487c = 1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f5488d = Float.NaN;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.PropertySet_android_alpha) {
                this.f5487c = obtainStyledAttributes.getFloat(index, this.f5487c);
            } else if (index == R.styleable.PropertySet_android_visibility) {
                int i7 = obtainStyledAttributes.getInt(index, this.f5485a);
                this.f5485a = i7;
                this.f5485a = l.f5503d[i7];
            } else if (index == R.styleable.PropertySet_visibilityMode) {
                this.f5486b = obtainStyledAttributes.getInt(index, this.f5486b);
            } else if (index == R.styleable.PropertySet_motionProgress) {
                this.f5488d = obtainStyledAttributes.getFloat(index, this.f5488d);
            }
        }
        obtainStyledAttributes.recycle();
    }

    public void copyFrom(j jVar) {
        jVar.getClass();
        this.f5485a = jVar.f5485a;
        this.f5487c = jVar.f5487c;
        this.f5488d = jVar.f5488d;
        this.f5486b = jVar.f5486b;
    }
}

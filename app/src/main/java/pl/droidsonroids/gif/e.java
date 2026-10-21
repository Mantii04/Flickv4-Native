package pl.droidsonroids.gif;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19542a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19543b;

    public e(ImageView imageView, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = imageView.getContext().obtainStyledAttributes(attributeSet, R.styleable.GifView, 0, 0);
        this.f19542a = obtainStyledAttributes.getBoolean(R.styleable.GifView_freezesAnimation, false);
        this.f19543b = obtainStyledAttributes.getInt(R.styleable.GifView_loopCount, -1);
        obtainStyledAttributes.recycle();
    }

    public e() {
        this.f19542a = false;
        this.f19543b = -1;
    }
}

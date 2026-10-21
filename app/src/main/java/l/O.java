package l;

import M.AbstractC0181p0;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R;
import f.AbstractC0876a;

/* loaded from: classes.dex */
public final class O {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f17751a;

    /* renamed from: b, reason: collision with root package name */
    public c2 f17752b;

    /* renamed from: c, reason: collision with root package name */
    public int f17753c = 0;

    public O(ImageView imageView) {
        this.f17751a = imageView;
    }

    public final void a() {
        c2 c2Var;
        ImageView imageView = this.f17751a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            P0.a(drawable);
        }
        if (drawable == null || (c2Var = this.f17752b) == null) {
            return;
        }
        I.a(drawable, c2Var, imageView.getDrawableState());
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i2) {
        int resourceId;
        ImageView imageView = this.f17751a;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(imageView.getContext(), attributeSet, R.styleable.AppCompatImageView, i2, 0);
        ImageView imageView2 = this.f17751a;
        AbstractC0181p0.saveAttributeDataForStyleable(imageView2, imageView2.getContext(), R.styleable.AppCompatImageView, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = AbstractC0876a.getDrawable(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                P0.a(drawable);
            }
            if (obtainStyledAttributes.hasValue(R.styleable.AppCompatImageView_tint)) {
                S.l.setImageTintList(imageView, obtainStyledAttributes.getColorStateList(R.styleable.AppCompatImageView_tint));
            }
            if (obtainStyledAttributes.hasValue(R.styleable.AppCompatImageView_tintMode)) {
                S.l.setImageTintMode(imageView, P0.parseTintMode(obtainStyledAttributes.getInt(R.styleable.AppCompatImageView_tintMode, -1), null));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setImageResource(int i2) {
        ImageView imageView = this.f17751a;
        if (i2 != 0) {
            Drawable drawable = AbstractC0876a.getDrawable(imageView.getContext(), i2);
            if (drawable != null) {
                P0.a(drawable);
            }
            imageView.setImageDrawable(drawable);
        } else {
            imageView.setImageDrawable(null);
        }
        a();
    }
}

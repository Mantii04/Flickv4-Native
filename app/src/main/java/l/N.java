package l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public class N extends ImageButton {

    /* renamed from: b, reason: collision with root package name */
    public final C1120B f17741b;

    /* renamed from: e, reason: collision with root package name */
    public final O f17742e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17743f;

    public N(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f17741b;
        if (c1120b != null) {
            c1120b.a();
        }
        O o6 = this.f17742e;
        if (o6 != null) {
            o6.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17741b;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17741b;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        c2 c2Var;
        O o6 = this.f17742e;
        if (o6 == null || (c2Var = o6.f17752b) == null) {
            return null;
        }
        return c2Var.f17876a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        c2 c2Var;
        O o6 = this.f17742e;
        if (o6 == null || (c2Var = o6.f17752b) == null) {
            return null;
        }
        return c2Var.f17877b;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return !(this.f17742e.f17751a.getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17741b;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17741b;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        O o6 = this.f17742e;
        if (o6 != null) {
            o6.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        O o6 = this.f17742e;
        if (o6 != null && drawable != null && !this.f17743f) {
            o6.f17753c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (o6 != null) {
            o6.a();
            if (this.f17743f) {
                return;
            }
            ImageView imageView = o6.f17751a;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(o6.f17753c);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i2) {
        super.setImageLevel(i2);
        this.f17743f = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        this.f17742e.setImageResource(i2);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        O o6 = this.f17742e;
        if (o6 != null) {
            o6.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f17741b;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17741b;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        O o6 = this.f17742e;
        if (o6 != null) {
            if (o6.f17752b == null) {
                o6.f17752b = new c2();
            }
            c2 c2Var = o6.f17752b;
            c2Var.f17876a = colorStateList;
            c2Var.f17879d = true;
            o6.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        O o6 = this.f17742e;
        if (o6 != null) {
            if (o6.f17752b == null) {
                o6.f17752b = new c2();
            }
            c2 c2Var = o6.f17752b;
            c2Var.f17877b = mode;
            c2Var.f17878c = true;
            o6.a();
        }
    }

    public N(Context context, AttributeSet attributeSet, int i2) {
        super(b2.wrap(context), attributeSet, i2);
        this.f17743f = false;
        a2.checkAppCompatTheme(this, getContext());
        C1120B c1120b = new C1120B(this);
        this.f17741b = c1120b;
        c1120b.d(attributeSet, i2);
        O o6 = new O(this);
        this.f17742e = o6;
        o6.loadFromAttributes(attributeSet, i2);
    }
}

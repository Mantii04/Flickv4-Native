package pl.droidsonroids.gif;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public class GifImageView extends ImageView {

    /* renamed from: b, reason: collision with root package name */
    public boolean f19517b;

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        n6.d dVar;
        List list = n6.e.f19017a;
        if (attributeSet == null || isInEditMode()) {
            dVar = new n6.d();
        } else {
            dVar = new n6.d(this, attributeSet);
            int i2 = dVar.f19543b;
            if (i2 >= 0) {
                Drawable drawable = getDrawable();
                if (drawable instanceof c) {
                    ((c) drawable).setLoopCount(i2);
                }
                Drawable background = getBackground();
                if (background instanceof c) {
                    ((c) background).setLoopCount(i2);
                }
            }
        }
        this.f19517b = dVar.f19542a;
        int i7 = dVar.f19015c;
        if (i7 > 0) {
            super.setImageResource(i7);
        }
        int i8 = dVar.f19016d;
        if (i8 > 0) {
            super.setBackgroundResource(i8);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        Drawable drawable = getDrawable();
        long[][] jArr = dVar.f19541b;
        if (jArr[0] != null && (drawable instanceof c)) {
            ((c) drawable).a(r0.f19530p.o(r1, r0.f19529n));
        }
        Drawable background = getBackground();
        if (jArr[1] == null || !(background instanceof c)) {
            return;
        }
        ((c) background).a(r0.f19530p.o(r5, r0.f19529n));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new d(super.onSaveInstanceState(), this.f19517b ? getDrawable() : null, this.f19517b ? getBackground() : null);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        if (n6.e.a(this, false, i2)) {
            return;
        }
        super.setBackgroundResource(i2);
    }

    public void setFreezesAnimation(boolean z6) {
        this.f19517b = z6;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        if (n6.e.a(this, true, i2)) {
            return;
        }
        super.setImageResource(i2);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        List list = n6.e.f19017a;
        if (uri != null) {
            try {
                setImageDrawable(new c(getContext().getContentResolver(), uri));
                return;
            } catch (IOException unused) {
            }
        }
        super.setImageURI(uri);
    }
}

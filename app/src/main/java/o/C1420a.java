package o;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.cardview.widget.CardView;

/* renamed from: o.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1420a implements c {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f19020a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CardView f19021b;

    public C1420a(CardView cardView) {
        this.f19021b = cardView;
    }

    public Drawable getCardBackground() {
        return this.f19020a;
    }

    public View getCardView() {
        return this.f19021b;
    }

    public boolean getPreventCornerOverlap() {
        return this.f19021b.getPreventCornerOverlap();
    }

    public boolean getUseCompatPadding() {
        return this.f19021b.getUseCompatPadding();
    }

    public void setCardBackground(Drawable drawable) {
        this.f19020a = drawable;
        this.f19021b.setBackgroundDrawable(drawable);
    }

    public void setShadowPadding(int i2, int i7, int i8, int i9) {
        CardView cardView = this.f19021b;
        cardView.f5194j.set(i2, i7, i8, i9);
        Rect rect = cardView.f5193f;
        super/*android.widget.FrameLayout*/.setPadding(i2 + rect.left, i7 + rect.top, i8 + rect.right, i9 + rect.bottom);
    }
}

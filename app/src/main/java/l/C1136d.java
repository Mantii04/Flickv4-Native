package l;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;

/* renamed from: l.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1136d extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final ActionBarContainer f17880a;

    public C1136d(ActionBarContainer actionBarContainer) {
        this.f17880a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f17880a;
        if (actionBarContainer.f4972p) {
            Drawable drawable = actionBarContainer.f4971n;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f4969j;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Drawable drawable3 = actionBarContainer.f4970m;
        if (drawable3 == null || !actionBarContainer.f4973q) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f17880a;
        if (actionBarContainer.f4972p) {
            if (actionBarContainer.f4971n != null) {
                AbstractC1133c.getOutline(actionBarContainer.f4969j, outline);
            }
        } else {
            Drawable drawable = actionBarContainer.f4969j;
            if (drawable != null) {
                AbstractC1133c.getOutline(drawable, outline);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}

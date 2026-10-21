package l;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R;

/* renamed from: l.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1172p extends P implements InterfaceC1189v {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C1186u f17964j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1172p(C1186u c1186u, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f17964j = c1186u;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        t2.setTooltipText(this, getContentDescription());
        setOnTouchListener(new C1169o(this, this));
    }

    @Override // l.InterfaceC1189v
    public boolean needsDividerAfter() {
        return false;
    }

    @Override // l.InterfaceC1189v
    public boolean needsDividerBefore() {
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f17964j.showOverflowMenu();
        return true;
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i2, int i7, int i8, int i9) {
        boolean frame = super.setFrame(i2, i7, i8, i9);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            E.c.setHotspotBounds(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}

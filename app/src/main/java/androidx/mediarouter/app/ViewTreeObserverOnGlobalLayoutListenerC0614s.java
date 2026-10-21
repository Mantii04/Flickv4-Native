package androidx.mediarouter.app;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.util.HashMap;
import java.util.List;

/* renamed from: androidx.mediarouter.app.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0614s implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f7902b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ D f7903e;

    public ViewTreeObserverOnGlobalLayoutListenerC0614s(D d7, boolean z6) {
        this.f7903e = d7;
        this.f7902b = z6;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        int i2;
        Bitmap bitmap;
        D d7 = this.f7903e;
        d7.f7612D.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        if (d7.f7653q0) {
            d7.f7655r0 = true;
            return;
        }
        int i7 = d7.f7620L.getLayoutParams().height;
        D.k(d7.f7620L, -1);
        d7.q(d7.e());
        View decorView = d7.getWindow().getDecorView();
        decorView.measure(View.MeasureSpec.makeMeasureSpec(d7.getWindow().getAttributes().width, 1073741824), 0);
        D.k(d7.f7620L, i7);
        if (d7.f7664w == null && (d7.f7614F.getDrawable() instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) d7.f7614F.getDrawable()).getBitmap()) != null) {
            i2 = d7.h(bitmap.getWidth(), bitmap.getHeight());
            d7.f7614F.setScaleType(bitmap.getWidth() >= bitmap.getHeight() ? ImageView.ScaleType.FIT_XY : ImageView.ScaleType.FIT_CENTER);
        } else {
            i2 = 0;
        }
        int i8 = d7.i(d7.e());
        int size = d7.f7626R.size();
        boolean j7 = d7.j();
        f1.U u6 = d7.f7654r;
        int size2 = j7 ? u6.getMemberRoutes().size() * d7.f7634Z : 0;
        if (size > 0) {
            size2 += d7.f7636b0;
        }
        int min = Math.min(size2, d7.f7635a0);
        if (!d7.f7651p0) {
            min = 0;
        }
        int max = Math.max(i2, min) + i8;
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int height = rect.height() - (d7.f7611C.getMeasuredHeight() - d7.f7612D.getMeasuredHeight());
        if (d7.f7664w != null || i2 <= 0 || max > height) {
            if (d7.f7620L.getMeasuredHeight() + d7.f7624P.getLayoutParams().height >= d7.f7612D.getMeasuredHeight()) {
                d7.f7614F.setVisibility(8);
            }
            max = min + i8;
            i2 = 0;
        } else {
            d7.f7614F.setVisibility(0);
            D.k(d7.f7614F, i2);
        }
        if (!d7.e() || max > height) {
            d7.f7621M.setVisibility(8);
        } else {
            d7.f7621M.setVisibility(0);
        }
        d7.q(d7.f7621M.getVisibility() == 0);
        int i9 = d7.i(d7.f7621M.getVisibility() == 0);
        int max2 = Math.max(i2, min) + i9;
        if (max2 > height) {
            min -= max2 - height;
        } else {
            height = max2;
        }
        d7.f7620L.clearAnimation();
        d7.f7624P.clearAnimation();
        d7.f7612D.clearAnimation();
        boolean z6 = this.f7902b;
        if (z6) {
            d7.d(d7.f7620L, i9);
            d7.d(d7.f7624P, min);
            d7.d(d7.f7612D, height);
        } else {
            D.k(d7.f7620L, i9);
            D.k(d7.f7624P, min);
            D.k(d7.f7612D, height);
        }
        D.k(d7.f7610B, rect.height());
        List<f1.U> memberRoutes = u6.getMemberRoutes();
        if (memberRoutes.isEmpty()) {
            d7.f7626R.clear();
            d7.f7625Q.notifyDataSetChanged();
            return;
        }
        if (G.listUnorderedEquals(d7.f7626R, memberRoutes)) {
            d7.f7625Q.notifyDataSetChanged();
            return;
        }
        HashMap itemBoundMap = z6 ? G.getItemBoundMap(d7.f7624P, d7.f7625Q) : null;
        HashMap itemBitmapMap = z6 ? G.getItemBitmapMap(d7.f7656s, d7.f7624P, d7.f7625Q) : null;
        d7.f7627S = G.getItemsAdded(d7.f7626R, memberRoutes);
        d7.f7628T = G.getItemsRemoved(d7.f7626R, memberRoutes);
        d7.f7626R.addAll(0, d7.f7627S);
        d7.f7626R.removeAll(d7.f7628T);
        d7.f7625Q.notifyDataSetChanged();
        if (z6 && d7.f7651p0) {
            if (d7.f7628T.size() + d7.f7627S.size() > 0) {
                d7.f7624P.setEnabled(false);
                d7.f7624P.requestLayout();
                d7.f7653q0 = true;
                d7.f7624P.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0616u(d7, itemBoundMap, itemBitmapMap));
                return;
            }
        }
        d7.f7627S = null;
        d7.f7628T = null;
    }
}

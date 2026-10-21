package J3;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bumptech.glide.manager.r;
import com.google.android.material.tabs.TabLayout;
import g3.AbstractC0951a;
import h2.n;
import x3.T;

/* loaded from: classes2.dex */
public class b implements r, n {
    public static RectF a(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.isTabIndicatorFullWidth() || !(view instanceof j)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        j jVar = (j) view;
        int contentWidth = jVar.getContentWidth();
        int contentHeight = jVar.getContentHeight();
        int dpToPx = (int) T.dpToPx(jVar.getContext(), 24);
        if (contentWidth < dpToPx) {
            contentWidth = dpToPx;
        }
        int right = (jVar.getRight() + jVar.getLeft()) / 2;
        int bottom = (jVar.getBottom() + jVar.getTop()) / 2;
        int i2 = contentWidth / 2;
        return new RectF(right - i2, bottom - (contentHeight / 2), i2 + right, (right / 2) + bottom);
    }

    public boolean b(CharSequence charSequence) {
        return false;
    }

    public void c(TabLayout tabLayout, View view, View view2, float f3, Drawable drawable) {
        RectF a7 = a(tabLayout, view);
        RectF a8 = a(tabLayout, view2);
        drawable.setBounds(AbstractC0951a.lerp((int) a7.left, (int) a8.left, f3), drawable.getBounds().top, AbstractC0951a.lerp((int) a7.right, (int) a8.right, f3), drawable.getBounds().bottom);
    }
}

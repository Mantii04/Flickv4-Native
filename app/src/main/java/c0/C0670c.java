package c0;

import M.AbstractC0181p0;
import M.C0152b;
import N.n;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.drawerlayout.widget.DrawerLayout;
import java.util.List;

/* renamed from: c0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0670c extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final Rect f8527d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DrawerLayout f8528e;

    public C0670c(DrawerLayout drawerLayout) {
        this.f8528e = drawerLayout;
    }

    @Override // M.C0152b
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        CharSequence drawerTitle;
        if (accessibilityEvent.getEventType() != 32) {
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }
        List<CharSequence> text = accessibilityEvent.getText();
        DrawerLayout drawerLayout = this.f8528e;
        View e3 = drawerLayout.e();
        if (e3 == null || (drawerTitle = drawerLayout.getDrawerTitle(drawerLayout.f(e3))) == null) {
            return true;
        }
        text.add(drawerTitle);
        return true;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, n nVar) {
        if (DrawerLayout.f5937O) {
            super.onInitializeAccessibilityNodeInfo(view, nVar);
        } else {
            n obtain = n.obtain(nVar);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            nVar.setSource(view);
            Object parentForAccessibility = AbstractC0181p0.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                nVar.setParent((View) parentForAccessibility);
            }
            Rect rect = this.f8527d;
            obtain.getBoundsInScreen(rect);
            nVar.setBoundsInScreen(rect);
            nVar.setVisibleToUser(obtain.isVisibleToUser());
            nVar.setPackageName(obtain.getPackageName());
            nVar.setClassName(obtain.getClassName());
            nVar.setContentDescription(obtain.getContentDescription());
            nVar.setEnabled(obtain.isEnabled());
            nVar.setFocused(obtain.isFocused());
            nVar.setAccessibilityFocused(obtain.isAccessibilityFocused());
            nVar.setSelected(obtain.isSelected());
            nVar.addAction(obtain.getActions());
            obtain.recycle();
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (DrawerLayout.h(childAt)) {
                    nVar.addChild(childAt);
                }
            }
        }
        nVar.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        nVar.setFocusable(false);
        nVar.setFocused(false);
        nVar.removeAction(N.h.f2121e);
        nVar.removeAction(N.h.f2122f);
    }

    @Override // M.C0152b
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        if (DrawerLayout.f5937O || DrawerLayout.h(view)) {
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
        return false;
    }
}

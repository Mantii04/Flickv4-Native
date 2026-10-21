package m1;

import M.C0152b;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class C0 extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final D0 f18245d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakHashMap f18246e = new WeakHashMap();

    public C0(D0 d02) {
        this.f18245d = d02;
    }

    @Override // M.C0152b
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0152b c0152b = (C0152b) this.f18246e.get(view);
        return c0152b != null ? c0152b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // M.C0152b
    public N.q getAccessibilityNodeProvider(View view) {
        C0152b c0152b = (C0152b) this.f18246e.get(view);
        return c0152b != null ? c0152b.getAccessibilityNodeProvider(view) : super.getAccessibilityNodeProvider(view);
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0152b c0152b = (C0152b) this.f18246e.get(view);
        if (c0152b != null) {
            c0152b.onInitializeAccessibilityEvent(view, accessibilityEvent);
        } else {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) N.n nVar) {
        D0 d02 = this.f18245d;
        if (!d02.f18252d.hasPendingAdapterUpdates()) {
            RecyclerView recyclerView = d02.f18252d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().c(view, nVar);
                C0152b c0152b = (C0152b) this.f18246e.get(view);
                if (c0152b != null) {
                    c0152b.onInitializeAccessibilityNodeInfo(view, nVar);
                    return;
                } else {
                    super.onInitializeAccessibilityNodeInfo(view, nVar);
                    return;
                }
            }
        }
        super.onInitializeAccessibilityNodeInfo(view, nVar);
    }

    @Override // M.C0152b
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0152b c0152b = (C0152b) this.f18246e.get(view);
        if (c0152b != null) {
            c0152b.onPopulateAccessibilityEvent(view, accessibilityEvent);
        } else {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // M.C0152b
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0152b c0152b = (C0152b) this.f18246e.get(viewGroup);
        return c0152b != null ? c0152b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // M.C0152b
    public boolean performAccessibilityAction(@SuppressLint({"InvalidNullabilityOverride"}) View view, int i2, @SuppressLint({"InvalidNullabilityOverride"}) Bundle bundle) {
        D0 d02 = this.f18245d;
        if (!d02.f18252d.hasPendingAdapterUpdates()) {
            RecyclerView recyclerView = d02.f18252d;
            if (recyclerView.getLayoutManager() != null) {
                C0152b c0152b = (C0152b) this.f18246e.get(view);
                if (c0152b != null) {
                    if (c0152b.performAccessibilityAction(view, i2, bundle)) {
                        return true;
                    }
                } else if (super.performAccessibilityAction(view, i2, bundle)) {
                    return true;
                }
                AbstractC1286i0 layoutManager = recyclerView.getLayoutManager();
                RecyclerView recyclerView2 = layoutManager.f18389b;
                return layoutManager.performAccessibilityActionForItem(recyclerView2.f8047f, recyclerView2.f8064q0, view, i2, bundle);
            }
        }
        return super.performAccessibilityAction(view, i2, bundle);
    }

    @Override // M.C0152b
    public void sendAccessibilityEvent(View view, int i2) {
        C0152b c0152b = (C0152b) this.f18246e.get(view);
        if (c0152b != null) {
            c0152b.sendAccessibilityEvent(view, i2);
        } else {
            super.sendAccessibilityEvent(view, i2);
        }
    }

    @Override // M.C0152b
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        C0152b c0152b = (C0152b) this.f18246e.get(view);
        if (c0152b != null) {
            c0152b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        } else {
            super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }
}

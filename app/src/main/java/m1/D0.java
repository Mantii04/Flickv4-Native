package m1;

import M.C0152b;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class D0 extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f18252d;

    /* renamed from: e, reason: collision with root package name */
    public final C0 f18253e;

    public D0(RecyclerView recyclerView) {
        this.f18252d = recyclerView;
        C0152b itemDelegate = getItemDelegate();
        if (itemDelegate == null || !(itemDelegate instanceof C0)) {
            this.f18253e = new C0(this);
        } else {
            this.f18253e = (C0) itemDelegate;
        }
    }

    public C0152b getItemDelegate() {
        return this.f18253e;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityEvent(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f18252d.hasPendingAdapterUpdates()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        RecyclerView recyclerView = this.f18252d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return;
        }
        AbstractC1286i0 layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.f18389b;
        layoutManager.onInitializeAccessibilityNodeInfo(recyclerView2.f8047f, recyclerView2.f8064q0, nVar);
    }

    @Override // M.C0152b
    public boolean performAccessibilityAction(@SuppressLint({"InvalidNullabilityOverride"}) View view, int i2, @SuppressLint({"InvalidNullabilityOverride"}) Bundle bundle) {
        if (super.performAccessibilityAction(view, i2, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f18252d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        AbstractC1286i0 layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.f18389b;
        return layoutManager.performAccessibilityAction(recyclerView2.f8047f, recyclerView2.f8064q0, i2, bundle);
    }
}

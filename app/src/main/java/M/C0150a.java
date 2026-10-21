package M;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.R;
import java.util.Collections;
import java.util.List;

/* renamed from: M.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0150a extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final C0152b f2010a;

    public C0150a(C0152b c0152b) {
        this.f2010a = c0152b;
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.f2010a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        N.q accessibilityNodeProvider = this.f2010a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return (AccessibilityNodeProvider) accessibilityNodeProvider.getProvider();
        }
        return null;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f2010a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        N.n wrap = N.n.wrap(accessibilityNodeInfo);
        wrap.setScreenReaderFocusable(AbstractC0181p0.isScreenReaderFocusable(view));
        wrap.setHeading(AbstractC0181p0.isAccessibilityHeading(view));
        wrap.setPaneTitle(AbstractC0181p0.getAccessibilityPaneTitle(view));
        wrap.setStateDescription(AbstractC0181p0.getStateDescription(view));
        this.f2010a.onInitializeAccessibilityNodeInfo(view, wrap);
        wrap.addSpansToExtras(accessibilityNodeInfo.getText(), view);
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            wrap.addAction((N.h) list.get(i2));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f2010a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f2010a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        return this.f2010a.performAccessibilityAction(view, i2, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEvent(View view, int i2) {
        this.f2010a.sendAccessibilityEvent(view, i2);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.f2010a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}

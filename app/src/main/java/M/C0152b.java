package M;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* renamed from: M.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0152b {

    /* renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f2013c = new View.AccessibilityDelegate();

    /* renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f2014a;

    /* renamed from: b, reason: collision with root package name */
    public final C0150a f2015b;

    public C0152b() {
        this(f2013c);
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.f2014a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public N.q getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f2014a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new N.q(accessibilityNodeProvider);
        }
        return null;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f2014a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        this.f2014a.onInitializeAccessibilityNodeInfo(view, nVar.unwrap());
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f2014a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f2014a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        boolean z6;
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        int i7 = 0;
        while (true) {
            if (i7 >= list.size()) {
                z6 = false;
                break;
            }
            N.h hVar = (N.h) list.get(i7);
            if (hVar.getId() == i2) {
                z6 = hVar.perform(view, bundle);
                break;
            }
            i7++;
        }
        if (!z6) {
            z6 = this.f2014a.performAccessibilityAction(view, i2, bundle);
        }
        if (z6 || i2 != R.id.accessibility_action_clickable_span || bundle == null) {
            return z6;
        }
        int i8 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i8)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            ClickableSpan[] clickableSpans = N.n.getClickableSpans(view.createAccessibilityNodeInfo().getText());
            for (int i9 = 0; clickableSpans != null && i9 < clickableSpans.length; i9++) {
                if (clickableSpan.equals(clickableSpans[i9])) {
                    clickableSpan.onClick(view);
                    return true;
                }
            }
        }
        return false;
    }

    public void sendAccessibilityEvent(View view, int i2) {
        this.f2014a.sendAccessibilityEvent(view, i2);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.f2014a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C0152b(View.AccessibilityDelegate accessibilityDelegate) {
        this.f2014a = accessibilityDelegate;
        this.f2015b = new C0150a(this);
    }
}

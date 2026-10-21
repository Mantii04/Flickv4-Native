package N;

import M.AbstractC0181p0;
import a.AbstractC0373c;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;

/* loaded from: classes.dex */
public final class d implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final c f2120a;

    public d(c cVar) {
        this.f2120a = cVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            return this.f2120a.equals(((d) obj).f2120a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2120a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean z6) {
        K3.l lVar = (K3.l) ((A0.a) this.f2120a).f3e;
        AutoCompleteTextView autoCompleteTextView = lVar.f1684h;
        if (autoCompleteTextView == null || AbstractC0373c.c(autoCompleteTextView)) {
            return;
        }
        AbstractC0181p0.setImportantForAccessibility(lVar.f1727d, z6 ? 2 : 1);
    }
}

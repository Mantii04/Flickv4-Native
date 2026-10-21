package K3;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes2.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f1724a;

    /* renamed from: b, reason: collision with root package name */
    public final q f1725b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f1726c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckableImageButton f1727d;

    public r(q qVar) {
        this.f1724a = qVar.f1707b;
        this.f1725b = qVar;
        this.f1726c = qVar.getContext();
        this.f1727d = qVar.f1713p;
    }

    public int b() {
        return 0;
    }

    public int c() {
        return 0;
    }

    public View.OnFocusChangeListener d() {
        return null;
    }

    public View.OnClickListener e() {
        return null;
    }

    public View.OnFocusChangeListener f() {
        return null;
    }

    public boolean g(int i2) {
        return true;
    }

    public N.c getTouchExplorationStateChangeListener() {
        return null;
    }

    public boolean h() {
        return false;
    }

    public boolean i() {
        return this instanceof l;
    }

    public boolean j() {
        return false;
    }

    public final void l() {
        this.f1725b.f(false);
    }

    public void a() {
    }

    public void m() {
    }

    public void n() {
    }

    public void afterEditTextChanged(Editable editable) {
    }

    public void k(boolean z6) {
    }

    public void onEditTextAttached(EditText editText) {
    }

    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
    }
}

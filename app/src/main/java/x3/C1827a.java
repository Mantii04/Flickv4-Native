package x3;

import M.C0152b;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.material.internal.CheckableImageButton;

/* renamed from: x3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1827a extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CheckableImageButton f20895d;

    public C1827a(CheckableImageButton checkableImageButton) {
        this.f20895d = checkableImageButton;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f20895d.isChecked());
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        CheckableImageButton checkableImageButton = this.f20895d;
        nVar.setCheckable(checkableImageButton.isCheckable());
        nVar.setChecked(checkableImageButton.isChecked());
    }
}

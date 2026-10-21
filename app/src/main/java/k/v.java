package k;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import j.InterfaceC1021d;

/* loaded from: classes.dex */
public final class v extends FrameLayout implements InterfaceC1021d {

    /* renamed from: b, reason: collision with root package name */
    public final CollapsibleActionView f17209b;

    /* JADX WARN: Multi-variable type inference failed */
    public v(View view) {
        super(view.getContext());
        this.f17209b = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // j.InterfaceC1021d
    public void onActionViewCollapsed() {
        this.f17209b.onActionViewCollapsed();
    }

    @Override // j.InterfaceC1021d
    public void onActionViewExpanded() {
        this.f17209b.onActionViewExpanded();
    }
}

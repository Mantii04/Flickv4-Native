package k;

import androidx.appcompat.view.menu.ActionMenuItemView;
import l.AbstractViewOnTouchListenerC1129a1;

/* renamed from: k.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1070b extends AbstractViewOnTouchListenerC1129a1 {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ ActionMenuItemView f17085s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1070b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f17085s = actionMenuItemView;
    }

    @Override // l.AbstractViewOnTouchListenerC1129a1
    public InterfaceC1064I getPopup() {
        AbstractC1071c abstractC1071c = this.f17085s.f4942v;
        if (abstractC1071c != null) {
            return abstractC1071c.getPopup();
        }
        return null;
    }

    @Override // l.AbstractViewOnTouchListenerC1129a1
    public boolean onForwardingStarted() {
        InterfaceC1064I popup;
        ActionMenuItemView actionMenuItemView = this.f17085s;
        InterfaceC1083o interfaceC1083o = actionMenuItemView.f4940t;
        return interfaceC1083o != null && interfaceC1083o.invokeItem(actionMenuItemView.f4937q) && (popup = getPopup()) != null && popup.isShowing();
    }
}

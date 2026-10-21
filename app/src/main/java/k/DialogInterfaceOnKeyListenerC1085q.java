package k;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.R;
import e.DialogInterfaceC0839s;

/* renamed from: k.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnKeyListenerC1085q implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC1059D {

    /* renamed from: b, reason: collision with root package name */
    public final C1084p f17173b;

    /* renamed from: e, reason: collision with root package name */
    public DialogInterfaceC0839s f17174e;

    /* renamed from: f, reason: collision with root package name */
    public C1080l f17175f;

    public DialogInterfaceOnKeyListenerC1085q(C1084p c1084p) {
        this.f17173b = c1084p;
    }

    public void dismiss() {
        DialogInterfaceC0839s dialogInterfaceC0839s = this.f17174e;
        if (dialogInterfaceC0839s != null) {
            dialogInterfaceC0839s.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        this.f17173b.performItemAction((s) this.f17175f.getAdapter().getItem(i2), 0);
    }

    @Override // k.InterfaceC1059D
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        if (z6 || c1084p == this.f17173b) {
            dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f17175f.onCloseMenu(this.f17173b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        C1084p c1084p = this.f17173b;
        if (i2 == 82 || i2 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f17174e.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f17174e.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                c1084p.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return c1084p.performShortcut(i2, keyEvent, 0);
    }

    @Override // k.InterfaceC1059D
    public boolean onOpenSubMenu(C1084p c1084p) {
        return false;
    }

    public void show(IBinder iBinder) {
        C1084p c1084p = this.f17173b;
        e.r rVar = new e.r(c1084p.getContext());
        C1080l c1080l = new C1080l(rVar.getContext(), R.layout.abc_list_menu_item_layout);
        this.f17175f = c1080l;
        c1080l.setCallback(this);
        c1084p.addMenuPresenter(this.f17175f);
        rVar.setAdapter(this.f17175f.getAdapter(), this);
        View headerView = c1084p.getHeaderView();
        if (headerView != null) {
            rVar.setCustomTitle(headerView);
        } else {
            rVar.setIcon(c1084p.getHeaderIcon()).setTitle(c1084p.getHeaderTitle());
        }
        rVar.setOnKeyListener(this);
        DialogInterfaceC0839s create = rVar.create();
        this.f17174e = create;
        create.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f17174e.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f17174e.show();
    }
}

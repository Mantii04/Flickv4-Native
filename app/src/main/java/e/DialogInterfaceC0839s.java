package e;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListView;
import androidx.appcompat.R;

/* renamed from: e.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceC0839s extends c0 implements DialogInterface {

    /* renamed from: n, reason: collision with root package name */
    public final C0838q f13863n;

    public DialogInterfaceC0839s(Context context, int i2) {
        super(context, c(context, i2));
        this.f13863n = new C0838q(getContext(), this, getWindow());
    }

    public static int c(Context context, int i2) {
        if (((i2 >>> 24) & 255) >= 1) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView getListView() {
        return this.f13863n.getListView();
    }

    @Override // e.c0, androidx.activity.p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f13863n.installContent();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f13863n.onKeyDown(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.f13863n.onKeyUp(i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public void setButton(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f13863n.setButton(i2, charSequence, onClickListener, null, null);
    }

    public void setIcon(int i2) {
        this.f13863n.setIcon(i2);
    }

    public void setMessage(CharSequence charSequence) {
        this.f13863n.setMessage(charSequence);
    }

    @Override // e.c0, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f13863n.setTitle(charSequence);
    }

    public void setView(View view) {
        this.f13863n.setView(view);
    }
}

package e;

import M.AbstractC0189u;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import j.AbstractC1020c;
import j.InterfaceC1019b;

/* loaded from: classes.dex */
public abstract class c0 extends androidx.activity.p implements InterfaceC0843w {

    /* renamed from: j, reason: collision with root package name */
    public AbstractC0813A f13744j;

    /* renamed from: m, reason: collision with root package name */
    public final b0 f13745m;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r1v2, types: [e.b0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c0(android.content.Context r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            if (r6 != 0) goto L14
            android.util.TypedValue r1 = new android.util.TypedValue
            r1.<init>()
            android.content.res.Resources$Theme r2 = r5.getTheme()
            int r3 = androidx.appcompat.R.attr.dialogTheme
            r2.resolveAttribute(r3, r1, r0)
            int r1 = r1.resourceId
            goto L15
        L14:
            r1 = r6
        L15:
            r4.<init>(r5, r1)
            e.b0 r1 = new e.b0
            r1.<init>()
            r4.f13745m = r1
            e.A r1 = r4.getDelegate()
            if (r6 != 0) goto L35
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            int r2 = androidx.appcompat.R.attr.dialogTheme
            r5.resolveAttribute(r2, r6, r0)
            int r6 = r6.resourceId
        L35:
            r1.setTheme(r6)
            r5 = 0
            r1.onCreate(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c0.<init>(android.content.Context, int):void");
    }

    @Override // androidx.activity.p, android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().addContentView(view, layoutParams);
    }

    public final boolean b(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getDelegate().onDestroy();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return AbstractC0189u.dispatchKeyEvent(this.f13745m, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i2) {
        return (T) getDelegate().findViewById(i2);
    }

    public AbstractC0813A getDelegate() {
        if (this.f13744j == null) {
            this.f13744j = AbstractC0813A.create(this, this);
        }
        return this.f13744j;
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    @Override // androidx.activity.p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        getDelegate().installViewFactory();
        super.onCreate(bundle);
        getDelegate().onCreate(bundle);
    }

    @Override // androidx.activity.p, android.app.Dialog
    public void onStop() {
        super.onStop();
        getDelegate().onStop();
    }

    @Override // e.InterfaceC0843w
    public AbstractC1020c onWindowStartingSupportActionMode(InterfaceC1019b interfaceC1019b) {
        return null;
    }

    @Override // androidx.activity.p, android.app.Dialog
    public void setContentView(int i2) {
        getDelegate().setContentView(i2);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().setTitle(charSequence);
    }

    public boolean supportRequestWindowFeature(int i2) {
        return getDelegate().requestWindowFeature(i2);
    }

    @Override // androidx.activity.p, android.app.Dialog
    public void setContentView(View view) {
        getDelegate().setContentView(view);
    }

    @Override // androidx.activity.p, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().setContentView(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i2) {
        super.setTitle(i2);
        getDelegate().setTitle(getContext().getString(i2));
    }

    @Override // e.InterfaceC0843w
    public void onSupportActionModeFinished(AbstractC1020c abstractC1020c) {
    }

    @Override // e.InterfaceC0843w
    public void onSupportActionModeStarted(AbstractC1020c abstractC1020c) {
    }
}

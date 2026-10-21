package l;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import android.widget.ListView;
import e.DialogInterfaceC0839s;

/* renamed from: l.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC1143f0 implements InterfaceC1167n0, DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public DialogInterfaceC0839s f17887b;

    /* renamed from: e, reason: collision with root package name */
    public ListAdapter f17888e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f17889f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C1170o0 f17890j;

    public DialogInterfaceOnClickListenerC1143f0(C1170o0 c1170o0) {
        this.f17890j = c1170o0;
    }

    @Override // l.InterfaceC1167n0
    public void dismiss() {
        DialogInterfaceC0839s dialogInterfaceC0839s = this.f17887b;
        if (dialogInterfaceC0839s != null) {
            dialogInterfaceC0839s.dismiss();
            this.f17887b = null;
        }
    }

    @Override // l.InterfaceC1167n0
    public Drawable getBackground() {
        return null;
    }

    @Override // l.InterfaceC1167n0
    public CharSequence getHintText() {
        return this.f17889f;
    }

    @Override // l.InterfaceC1167n0
    public int getHorizontalOffset() {
        return 0;
    }

    @Override // l.InterfaceC1167n0
    public int getVerticalOffset() {
        return 0;
    }

    @Override // l.InterfaceC1167n0
    public boolean isShowing() {
        DialogInterfaceC0839s dialogInterfaceC0839s = this.f17887b;
        if (dialogInterfaceC0839s != null) {
            return dialogInterfaceC0839s.isShowing();
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        C1170o0 c1170o0 = this.f17890j;
        c1170o0.setSelection(i2);
        if (c1170o0.getOnItemClickListener() != null) {
            c1170o0.performItemClick(null, i2, this.f17888e.getItemId(i2));
        }
        dismiss();
    }

    @Override // l.InterfaceC1167n0
    public void setAdapter(ListAdapter listAdapter) {
        this.f17888e = listAdapter;
    }

    @Override // l.InterfaceC1167n0
    public void setBackgroundDrawable(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // l.InterfaceC1167n0
    public void setHorizontalOffset(int i2) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // l.InterfaceC1167n0
    public void setHorizontalOriginalOffset(int i2) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // l.InterfaceC1167n0
    public void setPromptText(CharSequence charSequence) {
        this.f17889f = charSequence;
    }

    @Override // l.InterfaceC1167n0
    public void setVerticalOffset(int i2) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // l.InterfaceC1167n0
    public void show(int i2, int i7) {
        if (this.f17888e == null) {
            return;
        }
        C1170o0 c1170o0 = this.f17890j;
        e.r rVar = new e.r(c1170o0.getPopupContext());
        CharSequence charSequence = this.f17889f;
        if (charSequence != null) {
            rVar.setTitle(charSequence);
        }
        DialogInterfaceC0839s create = rVar.setSingleChoiceItems(this.f17888e, c1170o0.getSelectedItemPosition(), this).create();
        this.f17887b = create;
        ListView listView = create.getListView();
        AbstractC1137d0.d(listView, i2);
        AbstractC1137d0.c(listView, i7);
        this.f17887b.show();
    }
}

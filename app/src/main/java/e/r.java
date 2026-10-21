package e;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ListAdapter;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final C0835n f13859a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13860b;

    public r(Context context) {
        this(context, DialogInterfaceC0839s.c(context, 0));
    }

    public DialogInterfaceC0839s create() {
        C0835n c0835n = this.f13859a;
        DialogInterfaceC0839s dialogInterfaceC0839s = new DialogInterfaceC0839s(c0835n.f13784a, this.f13860b);
        c0835n.apply(dialogInterfaceC0839s.f13863n);
        dialogInterfaceC0839s.setCancelable(c0835n.f13793j);
        if (c0835n.f13793j) {
            dialogInterfaceC0839s.setCanceledOnTouchOutside(true);
        }
        c0835n.getClass();
        dialogInterfaceC0839s.setOnCancelListener(null);
        dialogInterfaceC0839s.setOnDismissListener(c0835n.f13794k);
        DialogInterface.OnKeyListener onKeyListener = c0835n.f13795l;
        if (onKeyListener != null) {
            dialogInterfaceC0839s.setOnKeyListener(onKeyListener);
        }
        return dialogInterfaceC0839s;
    }

    public Context getContext() {
        return this.f13859a.f13784a;
    }

    public r setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        C0835n c0835n = this.f13859a;
        c0835n.f13797n = listAdapter;
        c0835n.f13798o = onClickListener;
        return this;
    }

    public r setCancelable(boolean z6) {
        this.f13859a.f13793j = z6;
        return this;
    }

    public r setCustomTitle(View view) {
        this.f13859a.f13788e = view;
        return this;
    }

    public r setIcon(Drawable drawable) {
        this.f13859a.f13786c = drawable;
        return this;
    }

    public r setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        C0835n c0835n = this.f13859a;
        c0835n.f13796m = charSequenceArr;
        c0835n.f13804u = onMultiChoiceClickListener;
        c0835n.f13800q = zArr;
        c0835n.f13801r = true;
        return this;
    }

    public r setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        C0835n c0835n = this.f13859a;
        c0835n.f13791h = charSequence;
        c0835n.f13792i = onClickListener;
        return this;
    }

    public r setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.f13859a.f13794k = onDismissListener;
        return this;
    }

    public r setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        this.f13859a.f13795l = onKeyListener;
        return this;
    }

    public r setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        C0835n c0835n = this.f13859a;
        c0835n.f13789f = charSequence;
        c0835n.f13790g = onClickListener;
        return this;
    }

    public r setSingleChoiceItems(CharSequence[] charSequenceArr, int i2, DialogInterface.OnClickListener onClickListener) {
        C0835n c0835n = this.f13859a;
        c0835n.f13796m = charSequenceArr;
        c0835n.f13798o = onClickListener;
        c0835n.f13803t = i2;
        c0835n.f13802s = true;
        return this;
    }

    public r setTitle(CharSequence charSequence) {
        this.f13859a.f13787d = charSequence;
        return this;
    }

    public r setView(View view) {
        this.f13859a.f13799p = view;
        return this;
    }

    public DialogInterfaceC0839s show() {
        DialogInterfaceC0839s create = create();
        create.show();
        return create;
    }

    public r(Context context, int i2) {
        this.f13859a = new C0835n(new ContextThemeWrapper(context, DialogInterfaceC0839s.c(context, i2)));
        this.f13860b = i2;
    }

    public r setSingleChoiceItems(ListAdapter listAdapter, int i2, DialogInterface.OnClickListener onClickListener) {
        C0835n c0835n = this.f13859a;
        c0835n.f13797n = listAdapter;
        c0835n.f13798o = onClickListener;
        c0835n.f13803t = i2;
        c0835n.f13802s = true;
        return this;
    }
}

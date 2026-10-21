package l;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import androidx.appcompat.R;
import j.C1029l;
import k.C1058C;
import k.C1084p;

/* renamed from: l.v1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1191v1 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18023a;

    /* renamed from: b, reason: collision with root package name */
    public final C1084p f18024b;

    /* renamed from: c, reason: collision with root package name */
    public final View f18025c;

    /* renamed from: d, reason: collision with root package name */
    public final C1058C f18026d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC1188u1 f18027e;

    public C1191v1(Context context, View view) {
        this(context, view, 0);
    }

    public void dismiss() {
        this.f18026d.dismiss();
    }

    public Menu getMenu() {
        return this.f18024b;
    }

    public MenuInflater getMenuInflater() {
        return new C1029l(this.f18023a);
    }

    public void setOnMenuItemClickListener(InterfaceC1188u1 interfaceC1188u1) {
        this.f18027e = interfaceC1188u1;
    }

    public void show() {
        this.f18026d.show();
    }

    public C1191v1(Context context, View view, int i2) {
        this(context, view, i2, R.attr.popupMenuStyle, 0);
    }

    public C1191v1(Context context, View view, int i2, int i7, int i8) {
        this.f18023a = context;
        this.f18025c = view;
        C1084p c1084p = new C1084p(context);
        this.f18024b = c1084p;
        c1084p.setCallback(new C1182s1(this));
        C1058C c1058c = new C1058C(context, c1084p, view, false, i7, i8);
        this.f18026d = c1058c;
        c1058c.setGravity(i2);
        c1058c.setOnDismissListener(new C1185t1(this));
    }
}

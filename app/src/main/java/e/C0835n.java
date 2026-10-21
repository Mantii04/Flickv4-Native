package e;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: e.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0835n {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13784a;

    /* renamed from: b, reason: collision with root package name */
    public final LayoutInflater f13785b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f13786c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f13787d;

    /* renamed from: e, reason: collision with root package name */
    public View f13788e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f13789f;

    /* renamed from: g, reason: collision with root package name */
    public DialogInterface.OnClickListener f13790g;

    /* renamed from: h, reason: collision with root package name */
    public CharSequence f13791h;

    /* renamed from: i, reason: collision with root package name */
    public DialogInterface.OnClickListener f13792i;

    /* renamed from: k, reason: collision with root package name */
    public DialogInterface.OnDismissListener f13794k;

    /* renamed from: l, reason: collision with root package name */
    public DialogInterface.OnKeyListener f13795l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence[] f13796m;

    /* renamed from: n, reason: collision with root package name */
    public ListAdapter f13797n;

    /* renamed from: o, reason: collision with root package name */
    public DialogInterface.OnClickListener f13798o;

    /* renamed from: p, reason: collision with root package name */
    public View f13799p;

    /* renamed from: q, reason: collision with root package name */
    public boolean[] f13800q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f13801r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13802s;

    /* renamed from: u, reason: collision with root package name */
    public DialogInterface.OnMultiChoiceClickListener f13804u;

    /* renamed from: t, reason: collision with root package name */
    public int f13803t = -1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13793j = true;

    public C0835n(Context context) {
        this.f13784a = context;
        this.f13785b = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public void apply(C0838q c0838q) {
        C0838q c0838q2;
        C0835n c0835n;
        ListAdapter listAdapter;
        View view = this.f13788e;
        if (view != null) {
            c0838q.setCustomTitle(view);
        } else {
            CharSequence charSequence = this.f13787d;
            if (charSequence != null) {
                c0838q.setTitle(charSequence);
            }
            Drawable drawable = this.f13786c;
            if (drawable != null) {
                c0838q.setIcon(drawable);
            }
        }
        CharSequence charSequence2 = this.f13789f;
        if (charSequence2 == null) {
            c0838q2 = c0838q;
        } else {
            c0838q2 = c0838q;
            c0838q2.setButton(-1, charSequence2, this.f13790g, null, null);
        }
        CharSequence charSequence3 = this.f13791h;
        if (charSequence3 != null) {
            c0838q2.setButton(-2, charSequence3, this.f13792i, null, null);
        }
        if (this.f13796m == null && this.f13797n == null) {
            c0835n = this;
        } else {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) this.f13785b.inflate(c0838q2.f13822G, (ViewGroup) null);
            if (this.f13801r) {
                c0835n = this;
                listAdapter = new C0832k(c0835n, this.f13784a, c0838q2.f13823H, this.f13796m, alertController$RecycleListView);
            } else {
                c0835n = this;
                int i2 = c0835n.f13802s ? c0838q2.f13824I : c0838q2.f13825J;
                listAdapter = c0835n.f13797n;
                if (listAdapter == null) {
                    listAdapter = new C0837p(c0835n.f13784a, i2, R.id.text1, c0835n.f13796m);
                }
            }
            c0838q2.f13819D = listAdapter;
            c0838q2.f13820E = c0835n.f13803t;
            if (c0835n.f13798o != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0833l(this, c0838q2));
            } else if (c0835n.f13804u != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0834m(this, alertController$RecycleListView, c0838q2));
            }
            if (c0835n.f13802s) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (c0835n.f13801r) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            c0838q2.f13835g = alertController$RecycleListView;
        }
        View view2 = c0835n.f13799p;
        if (view2 != null) {
            c0838q2.setView(view2);
        }
    }
}

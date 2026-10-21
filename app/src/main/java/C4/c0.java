package C4;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.tv.TVCategory;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class c0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final int f651d = 100;

    /* renamed from: e, reason: collision with root package name */
    public final U4.l f652e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f653f;

    public c0(ArrayList<TVCategory> arrayList, U4.l lVar, Context context) {
        this.f653f = arrayList;
        new T4.d();
        new T4.n(context);
        ArrayList arrayList2 = App.f14430z;
        this.f652e = lVar;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f653f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(b0 b0Var, int i2) {
        b0Var.f643v.setSelected(i2 == 0);
        TVCategory tVCategory = (TVCategory) this.f653f.get(i2);
        b0Var.f642u = tVCategory;
        try {
            b0Var.f644w.setText(tVCategory.getCategoryName().toUpperCase(Locale.ROOT));
        } catch (Exception unused) {
        }
        if (b0Var.f642u.getCategoryImageurl() != null && b0Var.f642u.getCategoryImageurl().length() > 10 && b0Var.f642u.getCategoryImageurl().contains(HttpHost.DEFAULT_SCHEME_NAME)) {
            try {
                try {
                    m4.D.get().load(b0Var.f642u.getCategoryImageurl()).fit().centerCrop().into(b0Var.f645x);
                } catch (OutOfMemoryError e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        A4.m mVar = new A4.m(11, this, b0Var);
        View view = b0Var.f643v;
        view.setOnClickListener(mVar);
        view.setOnLongClickListener(new a0(this, i2, 0));
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, b0Var, 10));
    }

    @Override // m1.V
    public b0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.category_layout_item_view, viewGroup, false);
        if (this.f651d == 200) {
            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.channel_item_view_list, viewGroup, false);
        }
        return new b0(this, inflate);
    }
}

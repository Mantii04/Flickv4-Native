package C4;

import B4.ViewOnClickListenerC0038a;
import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.HistoryTVLink;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class e0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final Activity f668d;

    /* renamed from: e, reason: collision with root package name */
    public final C0996j f669e;

    /* renamed from: f, reason: collision with root package name */
    public final Typeface f670f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f671g;

    public e0(Context context, ArrayList<HistoryTVLink> arrayList, Activity activity) {
        this.f671g = arrayList;
        this.f668d = activity;
        AssetManager assets = context.getAssets();
        String str = Constant.f16184b;
        this.f670f = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f669e = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f671g.size();
    }

    @Override // m1.V
    public void onBindViewHolder(d0 d0Var, int i2) {
        HistoryTVLink historyTVLink = (HistoryTVLink) this.f671g.get(i2);
        d0Var.f658u = historyTVLink;
        String str = historyTVLink.name;
        TextView textView = d0Var.f661x;
        textView.setText(str);
        String str2 = d0Var.f658u.url;
        TextView textView2 = d0Var.f662y;
        textView2.setText(str2);
        textView2.requestFocus();
        C0996j c0996j = this.f669e;
        Typeface typeface = this.f670f;
        c0996j.applyFontToView(textView, typeface);
        c0996j.applyFontToView(textView2, typeface);
        boolean equals = d0Var.f658u.type.equals("3");
        ImageView imageView = d0Var.f663z;
        if (equals) {
            imageView.setImageResource(R.drawable.ic_action_file_type);
        } else if (d0Var.f658u.type.equals("1")) {
            imageView.setImageResource(R.drawable.tv_pack);
        } else {
            imageView.setImageResource(R.drawable.ic_action_tv_link);
        }
        d0Var.f659v.setOnClickListener(new A4.m(12, this, d0Var));
        d0Var.f660w.setOnClickListener(new ViewOnClickListenerC0038a(d0Var, 2));
    }

    @Override // m1.V
    public d0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new d0(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.tv_history_item_view, viewGroup, false));
    }
}

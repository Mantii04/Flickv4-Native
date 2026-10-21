package C4;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.ReleaseInfo;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class X extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final Context f617d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f618e;

    /* renamed from: f, reason: collision with root package name */
    public final C0996j f619f = new C0996j();

    /* renamed from: g, reason: collision with root package name */
    public final Typeface f620g;

    /* renamed from: h, reason: collision with root package name */
    public final Typeface f621h;

    public X(Context context, ArrayList<ReleaseInfo> arrayList) {
        this.f617d = context;
        this.f618e = arrayList;
        AssetManager assets = context.getAssets();
        String str = Constant.f16184b;
        this.f620g = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f621h = Typeface.createFromAsset(context.getAssets(), "fonts/pproduct_sans_rregular.ttf");
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f618e.size();
    }

    @Override // m1.V
    public void onBindViewHolder(W w6, int i2) {
        ReleaseInfo releaseInfo = (ReleaseInfo) this.f618e.get(i2);
        w6.f615u.setText(releaseInfo.versionName);
        String str = releaseInfo.changeLog;
        TextView textView = w6.f616v;
        textView.setText(str);
        TextView textView2 = w6.f615u;
        Typeface typeface = this.f620g;
        C0996j c0996j = this.f619f;
        c0996j.applyFontToView(textView2, typeface);
        c0996j.applyFontToView(textView, this.f621h);
    }

    @Override // m1.V
    public W onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new W(LayoutInflater.from(this.f617d).inflate(R.layout.item_release_note, viewGroup, false));
    }
}

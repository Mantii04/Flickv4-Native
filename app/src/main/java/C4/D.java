package C4;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import flix.com.vision.R;
import flix.com.vision.activities.DramaDetailActivity;
import flix.com.vision.models.Episode;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import me.grantland.widget.AutofitTextView;

/* loaded from: classes2.dex */
public final class D extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final C0996j f541d;

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f542e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f543f;

    /* renamed from: g, reason: collision with root package name */
    public final DramaDetailActivity f544g;

    public D(DramaDetailActivity dramaDetailActivity, ArrayList<Episode> arrayList, String str) {
        this.f543f = arrayList;
        this.f544g = dramaDetailActivity;
        AssetManager assets = dramaDetailActivity.getAssets();
        String str2 = Constant.f16184b;
        this.f542e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f541d = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f543f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(C c7, int i2) {
        c7.f537u = (Episode) this.f543f.get(i2);
        Typeface typeface = this.f542e;
        C0996j c0996j = this.f541d;
        AutofitTextView autofitTextView = c7.f538v;
        c0996j.applyFontToView(autofitTextView, typeface);
        autofitTextView.setText("E" + c7.f537u.number);
        ViewOnClickListenerC0088l viewOnClickListenerC0088l = new ViewOnClickListenerC0088l(i2, 1, this, c7);
        View view = c7.f540x;
        view.setOnClickListener(viewOnClickListenerC0088l);
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0089m(1));
    }

    @Override // m1.V
    public C onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.episode_anime_item_view, viewGroup, false));
    }
}

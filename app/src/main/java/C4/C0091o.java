package C4;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import flix.com.vision.R;
import flix.com.vision.activities.AnimeDetailActivity;
import flix.com.vision.models.Episode;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import me.grantland.widget.AutofitTextView;

/* renamed from: C4.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0091o extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final C0996j f753d;

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f754e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f755f;

    /* renamed from: g, reason: collision with root package name */
    public final AnimeDetailActivity f756g;

    public C0091o(AnimeDetailActivity animeDetailActivity, ArrayList<Episode> arrayList, String str) {
        this.f755f = arrayList;
        this.f756g = animeDetailActivity;
        AssetManager assets = animeDetailActivity.getAssets();
        String str2 = Constant.f16184b;
        this.f754e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f753d = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f755f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(C0090n c0090n, int i2) {
        c0090n.f744u = (Episode) this.f755f.get(i2);
        Typeface typeface = this.f754e;
        C0996j c0996j = this.f753d;
        AutofitTextView autofitTextView = c0090n.f745v;
        c0996j.applyFontToView(autofitTextView, typeface);
        autofitTextView.setText("E" + c0090n.f744u.toString());
        ViewOnClickListenerC0088l viewOnClickListenerC0088l = new ViewOnClickListenerC0088l(i2, 0, this, c0090n);
        View view = c0090n.f747x;
        view.setOnClickListener(viewOnClickListenerC0088l);
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0089m(0));
    }

    @Override // m1.V
    public C0090n onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C0090n(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.episode_anime_item_view, viewGroup, false));
    }
}

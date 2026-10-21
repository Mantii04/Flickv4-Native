package C4;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.models.Episode;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class G extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final C0996j f556d;

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f557e;

    /* renamed from: f, reason: collision with root package name */
    public final Typeface f558f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f559g;

    /* renamed from: h, reason: collision with root package name */
    public final Activity f560h;

    /* renamed from: i, reason: collision with root package name */
    public int f561i;

    public G(Activity activity, ArrayList<Episode> arrayList, int i2, int i7) {
        this.f559g = arrayList;
        this.f560h = activity;
        this.f561i = i7;
        AssetManager assets = activity.getAssets();
        String str = Constant.f16184b;
        this.f557e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f558f = Typeface.createFromAsset(activity.getAssets(), "fonts/product_sans_bold.ttf");
        this.f556d = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f559g.size();
    }

    public void setSeason(int i2) {
        this.f561i = i2;
    }

    @Override // m1.V
    public void onBindViewHolder(final F f3, @SuppressLint({"RecyclerView"}) final int i2) {
        TextView textView = f3.f553x;
        C0996j c0996j = this.f556d;
        Typeface typeface = this.f558f;
        c0996j.applyFontToView(textView, typeface);
        TextView textView2 = f3.f551v;
        c0996j.applyFontToView(textView2, typeface);
        Typeface typeface2 = this.f557e;
        TextView textView3 = f3.f552w;
        c0996j.applyFontToView(textView3, typeface2);
        TextView textView4 = f3.f554y;
        c0996j.applyFontToView(textView4, typeface2);
        Episode episode = (Episode) this.f559g.get(i2);
        f3.f550u = episode;
        textView4.setText(episode.runtime);
        textView2.setText("S" + this.f561i + "E" + f3.f550u.number);
        ViewOnClickListenerC0077a viewOnClickListenerC0077a = new ViewOnClickListenerC0077a(this, i2, 3);
        View view = f3.f555z;
        view.setOnClickListener(viewOnClickListenerC0077a);
        if (f3.f550u.img_url != null) {
            try {
                m4.D.get().load(f3.f550u.img_url).fit().centerCrop().into(f3.f548A);
            } catch (Exception e3) {
                try {
                    e3.printStackTrace();
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: C4.E
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z6) {
                G g7 = G.this;
                F f7 = f3;
                if (!z6) {
                    g7.getClass();
                    view2.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                    f7.f549B.setVisibility(8);
                    return;
                }
                Activity activity = g7.f560h;
                boolean z7 = activity instanceof SeriesDetailActivity;
                int i7 = i2;
                if (z7) {
                    ((SeriesDetailActivity) activity).episodeHighlited(i7);
                }
                if (activity instanceof SeriesDetailActivityLeanBack) {
                    ((SeriesDetailActivityLeanBack) activity).episodeHighlited(i7);
                }
                view2.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
                f7.f549B.setVisibility(0);
            }
        });
        textView3.setText(f3.f550u.plot);
        f3.f553x.setText(f3.f550u.title);
        view.setTag(Integer.valueOf(i2));
    }

    @Override // m1.V
    public F onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new F(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.episode_item_view, viewGroup, false));
    }
}

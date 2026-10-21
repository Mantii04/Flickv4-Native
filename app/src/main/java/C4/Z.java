package C4;

import android.app.Activity;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import flix.com.vision.R;
import flix.com.vision.models.Season;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class Z extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final Activity f626d;

    /* renamed from: e, reason: collision with root package name */
    public final U4.k f627e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f628f;

    /* renamed from: g, reason: collision with root package name */
    public int f629g;

    /* renamed from: h, reason: collision with root package name */
    public final C0996j f630h;

    /* renamed from: i, reason: collision with root package name */
    public final Typeface f631i;

    /* renamed from: j, reason: collision with root package name */
    public RecyclerView f632j;

    public Z(Activity activity, U4.k kVar, ArrayList<Season> arrayList, int i2) {
        this.f628f = arrayList;
        this.f629g = i2;
        this.f627e = kVar;
        this.f626d = activity;
        AssetManager assets = activity.getAssets();
        String str = Constant.f16184b;
        this.f631i = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f630h = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f628f.size();
    }

    @Override // m1.V
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f632j = recyclerView;
    }

    @Override // m1.V
    public void onBindViewHolder(Y y6, int i2) {
        Season season = (Season) this.f628f.get(i2);
        y6.f622u = season;
        TextView textView = y6.f624w;
        TextView textView2 = y6.f623v;
        try {
            textView2.setText(season.label);
            textView.setText(y6.f622u.episode_count + " Episodes");
        } catch (Exception e3) {
            e3.getMessage();
        }
        ViewOnClickListenerC0077a viewOnClickListenerC0077a = new ViewOnClickListenerC0077a(this, i2, 5);
        View view = y6.f625x;
        view.setOnClickListener(viewOnClickListenerC0077a);
        C0996j c0996j = this.f630h;
        Typeface typeface = this.f631i;
        c0996j.applyFontToView(textView2, typeface);
        c0996j.applyFontToView(textView, typeface);
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, y6, 9));
        if (this.f629g == y6.f622u.number) {
            view.setActivated(true);
        } else {
            view.setActivated(false);
        }
        view.setTag(Integer.valueOf(i2));
    }

    @Override // m1.V
    public Y onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new Y(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.season_item_view, viewGroup, false));
    }
}

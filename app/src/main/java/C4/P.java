package C4;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Random;

/* loaded from: classes2.dex */
public final class P extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final U4.j f591d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f592e;

    /* renamed from: g, reason: collision with root package name */
    public final int f594g;

    /* renamed from: h, reason: collision with root package name */
    public final Activity f595h;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f597j;

    /* renamed from: k, reason: collision with root package name */
    public final Typeface f598k;

    /* renamed from: l, reason: collision with root package name */
    public final C0996j f599l;

    /* renamed from: m, reason: collision with root package name */
    public final MainActivity f600m;

    /* renamed from: f, reason: collision with root package name */
    public final int f593f = 900;

    /* renamed from: i, reason: collision with root package name */
    public boolean f596i = true;

    public P(Context context, ArrayList arrayList, Activity activity, int i2, U4.j jVar, MainActivity mainActivity) {
        this.f594g = 0;
        new ArrayList();
        this.f592e = context;
        this.f597j = arrayList;
        this.f595h = activity;
        this.f594g = i2;
        this.f591d = jVar;
        AssetManager assets = activity.getAssets();
        String str = Constant.f16184b;
        this.f598k = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f599l = new C0996j();
        this.f600m = mainActivity;
        new Random(19L).nextInt(10);
        ArrayList arrayList2 = App.f14430z;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f597j.size();
    }

    @Override // m1.V
    public void onBindViewHolder(O o6, int i2) {
        TextView textView = o6.f588x;
        C0996j c0996j = this.f599l;
        Typeface typeface = this.f598k;
        c0996j.applyFontToView(textView, typeface);
        TextView textView2 = o6.f589y;
        c0996j.applyFontToView(textView2, typeface);
        ArrayList arrayList = this.f597j;
        Movie movie = (Movie) arrayList.get(i2);
        o6.f585u = movie;
        boolean isSeries = movie.isSeries();
        RelativeLayout relativeLayout = o6.f590z;
        if (isSeries) {
            relativeLayout.setVisibility(0);
        } else {
            relativeLayout.setVisibility(8);
        }
        Movie movie2 = o6.f585u;
        if (movie2.year == "null") {
            movie2.year = "";
        }
        o6.f588x.setText(movie2.getTitle());
        textView2.setText(o6.f585u.year);
        if (this.f594g == this.f593f && o6.f585u.getServer().equals("is_series")) {
            textView2.setText("Season " + o6.f585u.season);
        }
        String image_url = ((Movie) arrayList.get(i2)).getImage_url();
        ImageView imageView = o6.f584A;
        if (image_url == null || ((Movie) arrayList.get(i2)).getImage_url().isEmpty()) {
            imageView.setVisibility(4);
        } else {
            imageView.setVisibility(0);
            try {
                m4.D.get().load(((Movie) arrayList.get(i2)).getImage_url()).fit().centerCrop().into(imageView, new N(this, o6));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        ViewOnFocusChangeListenerC0078b viewOnFocusChangeListenerC0078b = new ViewOnFocusChangeListenerC0078b(this, o6, 8);
        View view = o6.f587w;
        view.setOnFocusChangeListener(viewOnFocusChangeListenerC0078b);
        view.setOnLongClickListener(new ViewOnLongClickListenerC0081e(i2, 3, this, o6));
        view.setOnClickListener(new A4.m(9, this, o6));
        if (i2 != 0 || (this.f595h instanceof SearchActivityTV)) {
            return;
        }
        view.requestFocus();
    }

    @Override // m1.V
    public O onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new O(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.movie_item_view, viewGroup, false));
    }
}

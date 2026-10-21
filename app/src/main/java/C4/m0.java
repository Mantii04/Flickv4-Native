package C4;

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
import flix.com.vision.activities.WatchedAcvivity;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Random;

/* loaded from: classes2.dex */
public final class m0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final U4.j f735d;

    /* renamed from: f, reason: collision with root package name */
    public final int f737f;

    /* renamed from: g, reason: collision with root package name */
    public final WatchedAcvivity f738g;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f740i;

    /* renamed from: j, reason: collision with root package name */
    public final Typeface f741j;

    /* renamed from: k, reason: collision with root package name */
    public final C0996j f742k;

    /* renamed from: l, reason: collision with root package name */
    public final MainActivity f743l;

    /* renamed from: e, reason: collision with root package name */
    public final int f736e = 900;

    /* renamed from: h, reason: collision with root package name */
    public boolean f739h = true;

    public m0(Context context, ArrayList arrayList, WatchedAcvivity watchedAcvivity, int i2, U4.j jVar, MainActivity mainActivity) {
        this.f737f = 0;
        new ArrayList();
        this.f740i = arrayList;
        this.f738g = watchedAcvivity;
        this.f737f = i2;
        this.f735d = jVar;
        AssetManager assets = watchedAcvivity.getAssets();
        String str = Constant.f16184b;
        this.f741j = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f742k = new C0996j();
        this.f743l = mainActivity;
        new Random(19L).nextInt(10);
        ArrayList arrayList2 = App.f14430z;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f740i.size();
    }

    @Override // m1.V
    public void onBindViewHolder(l0 l0Var, int i2) {
        TextView textView = l0Var.f731x;
        C0996j c0996j = this.f742k;
        Typeface typeface = this.f741j;
        c0996j.applyFontToView(textView, typeface);
        TextView textView2 = l0Var.f732y;
        c0996j.applyFontToView(textView2, typeface);
        ArrayList arrayList = this.f740i;
        Movie movie = (Movie) arrayList.get(i2);
        l0Var.f728u = movie;
        boolean isSeries = movie.isSeries();
        RelativeLayout relativeLayout = l0Var.f733z;
        if (isSeries) {
            relativeLayout.setVisibility(0);
        } else {
            relativeLayout.setVisibility(8);
        }
        Movie movie2 = l0Var.f728u;
        if (movie2.year == "null") {
            movie2.year = "";
        }
        l0Var.f731x.setText(movie2.getTitle());
        textView2.setText(l0Var.f728u.year);
        if (this.f737f == this.f736e && l0Var.f728u.getServer().equals("is_series")) {
            textView2.setText("Season " + l0Var.f728u.season);
        }
        boolean z6 = l0Var.f728u.isTrakt;
        ImageView imageView = l0Var.f726A;
        if (z6) {
            imageView.setVisibility(4);
            try {
                m4.D.get().load(R.drawable.trakt_logo_3).fit().centerCrop().into(l0Var.f727B);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else if (((Movie) arrayList.get(i2)).getImage_url() == null || ((Movie) arrayList.get(i2)).getImage_url().isEmpty()) {
            imageView.setVisibility(4);
        } else {
            imageView.setVisibility(0);
            try {
                m4.D.get().load(((Movie) arrayList.get(i2)).getImage_url()).fit().centerCrop().into(imageView, new k0(this, l0Var));
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        ViewOnFocusChangeListenerC0078b viewOnFocusChangeListenerC0078b = new ViewOnFocusChangeListenerC0078b(this, l0Var, 12);
        View view = l0Var.f730w;
        view.setOnFocusChangeListener(viewOnFocusChangeListenerC0078b);
        view.setOnLongClickListener(new ViewOnLongClickListenerC0081e(i2, 4, this, l0Var));
        view.setOnClickListener(new A4.m(15, this, l0Var));
        if (i2 == 0) {
            view.requestFocus();
        }
    }

    @Override // m1.V
    public l0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new l0(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.movie_item_view, viewGroup, false));
    }
}

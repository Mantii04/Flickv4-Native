package C4;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Anime;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* renamed from: C4.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0087k extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final Context f714d;

    /* renamed from: e, reason: collision with root package name */
    public final U4.d f715e;

    /* renamed from: f, reason: collision with root package name */
    public final C0996j f716f;

    /* renamed from: g, reason: collision with root package name */
    public final Activity f717g;

    /* renamed from: h, reason: collision with root package name */
    public final Typeface f718h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f719i;

    public C0087k(Context context, ArrayList<Anime> arrayList, Activity activity, int i2, U4.d dVar) {
        this.f714d = context;
        this.f719i = arrayList;
        this.f717g = activity;
        this.f715e = dVar;
        AssetManager assets = context.getAssets();
        String str = Constant.f16184b;
        this.f718h = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f716f = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f719i.size();
    }

    @Override // m1.V
    public void onBindViewHolder(C0086j c0086j, int i2) {
        TextView textView = c0086j.f706x;
        C0996j c0996j = this.f716f;
        Typeface typeface = this.f718h;
        c0996j.applyFontToView(textView, typeface);
        TextView textView2 = c0086j.f701C;
        c0996j.applyFontToView(textView2, typeface);
        TextView textView3 = c0086j.f708z;
        c0996j.applyFontToView(textView3, typeface);
        TextView textView4 = c0086j.f699A;
        c0996j.applyFontToView(textView4, typeface);
        TextView textView5 = c0086j.f700B;
        c0996j.applyFontToView(textView5, typeface);
        TextView textView6 = c0086j.f707y;
        textView6.setVisibility(8);
        textView3.setVisibility(8);
        textView4.setVisibility(8);
        textView5.setVisibility(8);
        ArrayList arrayList = this.f719i;
        Anime anime = (Anime) arrayList.get(i2);
        c0086j.f703u = anime;
        String str = anime.title;
        if (str.toLowerCase().contains("(dub)")) {
            textView3.setVisibility(0);
            textView3.setText("DUB");
            str = str.toLowerCase().replace("(dub)", "").trim();
        } else {
            textView3.setVisibility(8);
        }
        if (str.toLowerCase().contains("(sub)")) {
            textView4.setVisibility(0);
            textView4.setText("SUB");
            str = str.toLowerCase().replace("(sub)", "").trim();
        }
        if (str.toLowerCase().endsWith(")")) {
            String substring = str.substring(str.length() - 6);
            str = str.replace(substring, "").trim();
            textView2.setText(substring.replace("(", "").replace(")", ""));
        }
        c0086j.f706x.setText(str.toUpperCase());
        if (c0086j.f703u.title.contains("Movie")) {
            textView6.setVisibility(0);
            textView6.setText("MOVIE");
        }
        if (c0086j.f703u.title.contains("Special")) {
            textView5.setVisibility(0);
            textView5.setText("SPECIAL");
        }
        try {
            m4.D.get().load(((Anime) arrayList.get(i2)).image_url).fit().centerCrop().into(c0086j.f702D);
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
        ViewOnFocusChangeListenerC0078b viewOnFocusChangeListenerC0078b = new ViewOnFocusChangeListenerC0078b(this, c0086j, 2);
        View view = c0086j.f705w;
        view.setOnFocusChangeListener(viewOnFocusChangeListenerC0078b);
        view.setOnClickListener(new A4.m(2, this, c0086j));
        view.setOnLongClickListener(new ViewOnLongClickListenerC0085i(0, this, c0086j));
        if (i2 == 0) {
            view.requestFocus();
        }
    }

    @Override // m1.V
    public C0086j onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C0086j(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.anime_item_view, viewGroup, false));
    }
}

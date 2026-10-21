package S4;

import android.app.Activity;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import flix.com.vision.App;
import flix.com.vision.R;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class o extends DialogFragment {

    /* renamed from: b, reason: collision with root package name */
    public Button f3396b;

    /* renamed from: e, reason: collision with root package name */
    public Button f3397e;

    /* renamed from: f, reason: collision with root package name */
    public LinearLayout f3398f;

    /* renamed from: j, reason: collision with root package name */
    public LinearLayout f3399j;

    /* renamed from: m, reason: collision with root package name */
    public LinearLayout f3400m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f3401n;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f3402p;

    /* renamed from: q, reason: collision with root package name */
    public Spinner f3403q;

    /* renamed from: r, reason: collision with root package name */
    public Spinner f3404r;

    /* renamed from: s, reason: collision with root package name */
    public Spinner f3405s;

    /* renamed from: t, reason: collision with root package name */
    public Spinner f3406t;

    /* renamed from: u, reason: collision with root package name */
    public Spinner f3407u;

    /* renamed from: v, reason: collision with root package name */
    public CheckBox f3408v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f3409w;

    public static o newInstance(boolean z6, Activity activity) {
        return new o();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.filter_setting_fragment_anime, viewGroup, false);
        getDialog().getWindow().requestFeature(1);
        setCancelable(true);
        this.f3402p = (LinearLayout) inflate.findViewById(R.id.lin_sort);
        this.f3404r = (Spinner) inflate.findViewById(R.id.spinner_sort);
        this.f3409w = (LinearLayout) inflate.findViewById(R.id.lin_hsfk);
        this.f3408v = (CheckBox) inflate.findViewById(R.id.check_nsfk);
        this.f3399j = (LinearLayout) inflate.findViewById(R.id.lin_lang);
        this.f3398f = (LinearLayout) inflate.findViewById(R.id.lin_genre);
        this.f3400m = (LinearLayout) inflate.findViewById(R.id.lin_year);
        this.f3401n = (LinearLayout) inflate.findViewById(R.id.lin_type);
        this.f3398f.setOnClickListener(new f(this));
        this.f3398f.requestFocus();
        this.f3402p.setOnClickListener(new g(this));
        this.f3399j.setOnClickListener(new h(this));
        this.f3401n.setOnClickListener(new i(this));
        this.f3400m.setOnClickListener(new j(this));
        this.f3397e = (Button) inflate.findViewById(R.id.cancel_but);
        this.f3396b = (Button) inflate.findViewById(R.id.save_but);
        this.f3403q = (Spinner) inflate.findViewById(R.id.spinner_genre);
        this.f3406t = (Spinner) inflate.findViewById(R.id.spinner_lang);
        this.f3405s = (Spinner) inflate.findViewById(R.id.spinner_year);
        this.f3407u = (Spinner) inflate.findViewById(R.id.spinner_type);
        String str = "All";
        ArrayList arrayList = new ArrayList(Arrays.asList("All", "Dubbed", "Subbed"));
        ArrayList arrayList2 = new ArrayList(Arrays.asList("All", "Movie", "TV Series", "OVA", "ONA", "Special"));
        ArrayList arrayList3 = new ArrayList(Arrays.asList("All", "Action", "Adventure", "Cars", "Comedy", "Dementia", "Demons", "Drama", "Ecchi", "Fantasy", "Game", "Harem", "Historical", "Horror", "Josei", "Kids", "Magic", "Martial", "Arts", "Mecha", "Military", "Music", "Mystery", "Parody", "Police", "Psychological", "Romance", "Samurai", "School", "Sci-Fi", "Seinen", "Shoujo", "Shoujo Ai", "Shounen", "Shounen Ai", "Slice of Life", "Space", "Sports", "Super", "Power", "Supernatural", "Thriller", "Vampire", "Yaoi", "Yuri"));
        ArrayList arrayList4 = new ArrayList(Arrays.asList("All", "2023", "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008", "2007", "2006", "2005", "2004", "2003", "2002", "2001", "2000", "1999", "1998", "1997", "1996", "1995", "1994", "1993", "1992", "1991", "1990", "1989", "1988", "1987", "1986", "1985", "1984", "1983", "1982", "1981", "1980", "1979", "1978", "1977", "1976", "1975", "1974", "1973", "1972", "1971", "1970", "1969", "1968", "1967", "1966", "1965", "1964", "1963", "1962", "1961", "1960"));
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(getActivity(), R.array.langs, R.layout.spinner_row1);
        ArrayAdapter<CharSequence> createFromResource2 = ArrayAdapter.createFromResource(getActivity(), R.array.types, R.layout.spinner_row1);
        ArrayAdapter<CharSequence> createFromResource3 = ArrayAdapter.createFromResource(getActivity(), R.array.years, R.layout.spinner_row1);
        ArrayAdapter<CharSequence> createFromResource4 = ArrayAdapter.createFromResource(getActivity(), R.array.genres_anim, R.layout.spinner_row1);
        ArrayAdapter<CharSequence> createFromResource5 = ArrayAdapter.createFromResource(getActivity(), R.array.server_sortby, R.layout.spinner_row1);
        this.f3408v.setChecked(App.getInstance().f14440s.getBoolean("pref_hide_adult_content_anime", false));
        this.f3409w.setOnClickListener(new k(this));
        this.f3408v.setOnCheckedChangeListener(new l());
        this.f3404r.setAdapter((SpinnerAdapter) createFromResource5);
        this.f3405s.setAdapter((SpinnerAdapter) createFromResource3);
        this.f3403q.setAdapter((SpinnerAdapter) createFromResource4);
        this.f3406t.setAdapter((SpinnerAdapter) createFromResource);
        this.f3407u.setAdapter((SpinnerAdapter) createFromResource2);
        this.f3404r.setSelection(App.getInstance().f14440s.getInt("sort_by_index_anime", 0));
        this.f3404r.setOnItemSelectedListener(new m());
        try {
            String string = App.getInstance().f14440s.getString("year_anime", "");
            if (string == "") {
                string = "All";
            }
            this.f3405s.setSelection(arrayList4.indexOf(string));
            String string2 = App.getInstance().f14440s.getString("genre_anime", "");
            if (string2 == "") {
                string2 = "All";
            }
            this.f3403q.setSelection(arrayList3.indexOf(string2));
            String string3 = App.getInstance().f14440s.getString("type_anime", "");
            if (string3 == "") {
                string3 = "All";
            }
            this.f3407u.setSelection(arrayList2.indexOf(string3));
            String string4 = App.getInstance().f14440s.getString("lang_anime", "");
            if (string4 != "") {
                str = string4;
            }
            this.f3406t.setSelection(arrayList.indexOf(str));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.f3396b.setOnClickListener(new n(this));
        this.f3397e.setOnClickListener(new a(this));
        this.f3407u.setOnItemSelectedListener(new b(this, arrayList2));
        this.f3406t.setOnItemSelectedListener(new c(this, arrayList));
        this.f3405s.setOnItemSelectedListener(new d(this, arrayList4));
        this.f3403q.setOnItemSelectedListener(new e(this, arrayList3));
        return inflate;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}

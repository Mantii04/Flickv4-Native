package flix.com.vision.activities;

import C4.P;
import U4.j;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.FavoritesAcvivity;
import flix.com.vision.models.Movie;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import y4.L;

/* loaded from: classes2.dex */
public class FavoritesAcvivity extends flix.com.vision.activities.base.a implements j {

    /* renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f14655u = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f14656b;

    /* renamed from: e, reason: collision with root package name */
    public int f14657e;

    /* renamed from: f, reason: collision with root package name */
    public String[] f14658f;

    /* renamed from: j, reason: collision with root package name */
    public String[] f14659j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f14660m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f14661n;

    /* renamed from: p, reason: collision with root package name */
    public final int f14662p = HttpStatus.SC_OK;

    /* renamed from: q, reason: collision with root package name */
    public SuperRecyclerView f14663q;

    /* renamed from: r, reason: collision with root package name */
    public ArrayList f14664r;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f14665s;

    /* renamed from: t, reason: collision with root package name */
    public P f14666t;

    public final void e() {
        Comparator comparing;
        this.f14664r.clear();
        Iterator it = this.f14665s.iterator();
        while (it.hasNext()) {
            Movie movie = (Movie) it.next();
            if (this.f14656b == 0) {
                this.f14664r.add(movie);
            }
            if (this.f14656b == 1 && !movie.isSeries()) {
                this.f14664r.add(movie);
            }
            if (this.f14656b == 2 && movie.isSeries()) {
                this.f14664r.add(movie);
            }
        }
        if (this.f14657e == 1) {
            ArrayList arrayList = this.f14664r;
            comparing = Comparator.comparing(new L());
            Collections.sort(arrayList, comparing);
        }
        this.f14666t.notifyDataSetChanged();
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
        if (i2 >= this.f14664r.size()) {
            return;
        }
        this.f14664r.remove(i2);
        this.f14666t.notifyItemRemoved(i2);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_favorites);
        this.f14658f = new String[]{"Show All", "Movies", "TV Shows"};
        this.f14659j = new String[]{"By Date", "Alphabetic"};
        this.f14665s = new ArrayList();
        this.f14663q = (SuperRecyclerView) findViewById(R.id.recyclerview_favorites);
        this.f14660m = (TextView) findViewById(R.id.filter_button);
        this.f14661n = (TextView) findViewById(R.id.sort_button);
        ArrayList<Movie> favoritesMoviesFromDb = App.getInstance().f14439r.getFavoritesMoviesFromDb();
        this.f14664r = favoritesMoviesFromDb;
        this.f14665s.addAll(favoritesMoviesFromDb);
        P p6 = new P(getBaseContext(), this.f14664r, this, this.f14662p, this, null);
        this.f14666t = p6;
        this.f14663q.setAdapter(p6);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f14663q.setLayoutManager(new GridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140.0f)));
        final int i2 = 0;
        this.f14660m.setOnClickListener(new View.OnClickListener(this) { // from class: y4.J

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FavoritesAcvivity f21138e;

            {
                this.f21138e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FavoritesAcvivity favoritesAcvivity = this.f21138e;
                switch (i2) {
                    case 0:
                        int i7 = FavoritesAcvivity.f14655u;
                        e.r rVar = new e.r(new ContextThemeWrapper(favoritesAcvivity, R.style.AlertDialogCustom));
                        rVar.setSingleChoiceItems(favoritesAcvivity.f14658f, favoritesAcvivity.f14656b, new K(favoritesAcvivity, 1));
                        rVar.show();
                        break;
                    default:
                        int i8 = FavoritesAcvivity.f14655u;
                        e.r rVar2 = new e.r(new ContextThemeWrapper(favoritesAcvivity, R.style.AlertDialogCustom));
                        rVar2.setSingleChoiceItems(favoritesAcvivity.f14659j, favoritesAcvivity.f14657e, new K(favoritesAcvivity, 0));
                        rVar2.show();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f14661n.setOnClickListener(new View.OnClickListener(this) { // from class: y4.J

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FavoritesAcvivity f21138e;

            {
                this.f21138e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FavoritesAcvivity favoritesAcvivity = this.f21138e;
                switch (i7) {
                    case 0:
                        int i72 = FavoritesAcvivity.f14655u;
                        e.r rVar = new e.r(new ContextThemeWrapper(favoritesAcvivity, R.style.AlertDialogCustom));
                        rVar.setSingleChoiceItems(favoritesAcvivity.f14658f, favoritesAcvivity.f14656b, new K(favoritesAcvivity, 1));
                        rVar.show();
                        break;
                    default:
                        int i8 = FavoritesAcvivity.f14655u;
                        e.r rVar2 = new e.r(new ContextThemeWrapper(favoritesAcvivity, R.style.AlertDialogCustom));
                        rVar2.setSingleChoiceItems(favoritesAcvivity.f14659j, favoritesAcvivity.f14657e, new K(favoritesAcvivity, 0));
                        rVar2.show();
                        break;
                }
            }
        });
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        Intent intent = new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra("movie", movie);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}

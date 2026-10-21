package flix.com.vision.activities;

import A4.m;
import C4.ViewOnClickListenerC0088l;
import C4.m0;
import Q4.d;
import U4.j;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import flix.com.vision.subtitles.OpenSubtitles;
import java.util.ArrayList;
import y4.A1;

/* loaded from: classes2.dex */
public class WatchedAcvivity extends flix.com.vision.activities.base.a implements j {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f15295n = 0;

    /* renamed from: b, reason: collision with root package name */
    public TextView f15296b;

    /* renamed from: e, reason: collision with root package name */
    public final int f15297e = HttpStatus.SC_OK;

    /* renamed from: f, reason: collision with root package name */
    public SuperRecyclerView f15298f;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f15299j;

    /* renamed from: m, reason: collision with root package name */
    public m0 f15300m;

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_watched);
        this.f15296b = (TextView) findViewById(R.id.clear_button);
        this.f15298f = (SuperRecyclerView) findViewById(R.id.recyclerview_favorites);
        this.f15299j = App.getInstance().f14439r.getWatchedMoviesFromDb();
        m0 m0Var = new m0(getBaseContext(), this.f15299j, this, this.f15297e, this, null);
        this.f15300m = m0Var;
        this.f15298f.setAdapter(m0Var);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f15298f.setLayoutManager(new GridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140.0f)));
        this.f15296b.setOnClickListener(new A1(this, 0));
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        Intent intent = App.f14424I ? new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class) : new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra(OpenSubtitles.Params.Key.QUERY, movie.getTitle());
        intent.putExtra("server", "");
        intent.putExtra("movie", movie);
        intent.putExtra("year", movie.year);
        startActivity(intent);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    public void showLongPressDialog(Movie movie, int i2) {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle(movie.getTitle());
        newInstance.setMessage("What would you like to Do?");
        newInstance.setButton2("ADD TO FAVORITES", new m(21, this, movie));
        newInstance.setButton3("REMOVE", new ViewOnClickListenerC0088l(this, movie, i2, 4));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}

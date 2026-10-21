package flix.com.vision.activities;

import C4.C0101z;
import Q4.d;
import T4.l;
import U4.e;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.recyclerview.widget.RecyclerView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.Drama;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import y4.D;
import y4.F;

/* loaded from: classes2.dex */
public class DramaSearchActivityMobile extends flix.com.vision.activities.base.a implements e {

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f14627t = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f14628b;

    /* renamed from: e, reason: collision with root package name */
    public Toolbar f14629e;

    /* renamed from: f, reason: collision with root package name */
    public MaterialSearchView f14630f;

    /* renamed from: m, reason: collision with root package name */
    public RecyclerView f14632m;

    /* renamed from: n, reason: collision with root package name */
    public C0101z f14633n;

    /* renamed from: r, reason: collision with root package name */
    public int f14636r;

    /* renamed from: s, reason: collision with root package name */
    public d f14637s;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f14631j = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public String f14634p = "https://kissasiantv.to";

    /* renamed from: q, reason: collision with root package name */
    public boolean f14635q = false;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f14630f.isOpen()) {
            this.f14630f.closeSearch();
            return;
        }
        if (this.f14635q) {
            this.f14635q = false;
            super.onBackPressed();
            finish();
            return;
        }
        if (this.f14631j.size() < 200) {
            this.f14632m.smoothScrollToPosition(0);
        } else {
            this.f14632m.scrollToPosition(0);
        }
        this.f14635q = true;
        this.f14632m.clearFocus();
        this.f14629e.requestFocus();
        Toast.makeText(getBaseContext(), "Press Back again to Exit", 0).show();
        new Handler().postDelayed(new D(this, 0), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        this.f14634p = sharedPreferences.getString("pref_drama_host", "https://kissasiantv.to");
        Typeface.createFromAsset(getAssets(), "fonts/pproduct_sans_rregular.ttf");
        new C0996j();
        setContentView(R.layout.activity_drama_search_mobile);
        this.f14633n = new C0101z(this.f14631j, this, this);
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f14630f = materialSearchView;
        materialSearchView.setShouldKeepHistory(false);
        this.f14630f.setTintAlpha(1);
        this.f14630f.setHint("Search for any adult video...");
        this.f14630f.setOnQueryTextListener(new F(this));
        this.f14628b = (RelativeLayout) findViewById(R.id.activity_player);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.f14629e = toolbar;
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("Adult Video Search");
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recyclerview_categories);
        this.f14632m = recyclerView;
        recyclerView.setAdapter(this.f14633n);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f14632m.setLayoutManager(new CenterGridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 130)));
        this.f14632m.addItemDecoration(new l(5));
        setBackgroundColor();
        new Handler().postDelayed(new D(this, 1), 500L);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.adult_search_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_search) {
            this.f14630f.openSearch();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.e
    public void openDrama(Drama drama) {
    }

    @Override // U4.e
    public void removeDramaFromFavorites(Drama drama) {
    }

    public void setBackgroundColor() {
        this.f14636r = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f14636r), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 12));
        ofObject.start();
        this.f14636r = 0;
    }
}

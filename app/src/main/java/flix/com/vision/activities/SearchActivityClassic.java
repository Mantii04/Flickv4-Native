package flix.com.vision.activities;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.R;
import flix.com.vision.materialsearchview.MaterialSearchView;
import y4.D0;
import y4.E0;

/* loaded from: classes2.dex */
public class SearchActivityClassic extends flix.com.vision.activities.base.a {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f14976m = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f14977b;

    /* renamed from: e, reason: collision with root package name */
    public MaterialSearchView f14978e;

    /* renamed from: f, reason: collision with root package name */
    public final String f14979f = "";

    /* renamed from: j, reason: collision with root package name */
    public int f14980j;

    public static boolean isTV() {
        return Build.MODEL.contains("AFT");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f14978e.isOpen()) {
            this.f14978e.closeSearch();
        } else {
            super.onBackPressed();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_search_classic);
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f14978e = materialSearchView;
        materialSearchView.setShouldKeepHistory(false);
        this.f14978e.setTintAlpha(1);
        this.f14978e.setHint("Movies, TV Shows, People...");
        this.f14978e.setOnQueryTextListener(new E0(this));
        this.f14977b = (RelativeLayout) findViewById(R.id.activity_player);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("Search");
        setBackgroundColor();
        new Handler().postDelayed(new D0(this, 0), 500L);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.search_menu_classic, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_search) {
            this.f14978e.openSearch();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        new Handler().postDelayed(new D0(this, 1), 500L);
    }

    public void setBackgroundColor() {
        this.f14980j = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f14980j), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 18));
        ofObject.start();
        this.f14980j = 0;
    }
}

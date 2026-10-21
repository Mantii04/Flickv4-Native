package flix.com.vision.activities;

import C4.C0087k;
import T4.k;
import U4.d;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import e.DialogInterfaceC0839s;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.Anime;
import flix.com.vision.subtitles.OpenSubtitles;
import java.util.ArrayList;
import java.util.Collections;
import y4.DialogInterfaceOnClickListenerC1903g;
import y4.DialogInterfaceOnDismissListenerC1905h;
import y4.RunnableC1907i;

/* loaded from: classes2.dex */
public class AnimeSearchResultActivityClassic extends flix.com.vision.activities.base.a implements d {

    /* renamed from: b, reason: collision with root package name */
    public ProgressBar f14479b;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f14480e;

    /* renamed from: f, reason: collision with root package name */
    public C0087k f14481f;

    /* renamed from: j, reason: collision with root package name */
    public SuperRecyclerView f14482j;

    /* renamed from: m, reason: collision with root package name */
    public final int f14483m = 100;

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_search_result_activty_anime);
        this.f14480e = new ArrayList();
        this.f14481f = new C0087k(getBaseContext(), this.f14480e, this, this.f14483m, this);
        this.f14482j = (SuperRecyclerView) findViewById(R.id.recyclerview);
        this.f14479b = (ProgressBar) findViewById(R.id.loader);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f14482j.setLayoutManager(new CenterGridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140.0f)));
        this.f14482j.addItemDecoration(new k(12));
        this.f14482j.setAdapter(this.f14481f);
        String stringExtra = getIntent().getStringExtra(OpenSubtitles.Params.Key.QUERY);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setTitle("Results for \"" + stringExtra + "\"");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.f14480e.addAll(App.getInstance().f14439r.searchGoAnime(stringExtra.replace("'", "")));
        if (this.f14480e.size() < 1) {
            this.f14479b.setVisibility(8);
            DialogInterfaceC0839s create = new r(this).create();
            create.setTitle(getString(R.string.no_result_mess));
            create.setIcon(R.drawable.ic_action_sentiment_very_dissatisfied);
            create.setMessage(getString(R.string.go_back_check_query_mess));
            create.setButton(-3, getString(R.string.ok_label), new DialogInterfaceOnClickListenerC1903g(this));
            try {
                create.show();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            create.setCancelable(false);
            create.setOnDismissListener(new DialogInterfaceOnDismissListenerC1905h(this));
        }
        Collections.reverse(this.f14480e);
        this.f14482j.getAdapter().notifyDataSetChanged();
        this.f14482j.invalidate();
        this.f14479b.setVisibility(8);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.anime_search_menu, menu);
        return true;
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        }
        if (itemId != R.id.action_sort_anime) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f14480e);
        this.f14480e.clear();
        this.f14481f.notifyDataSetChanged();
        Collections.reverse(arrayList);
        new Handler().postDelayed(new RunnableC1907i(this, arrayList), 300L);
        return true;
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.d
    public void openAnime(Anime anime) {
        Intent intent = new Intent(this, (Class<?>) AnimeDetailActivity.class);
        intent.putExtra("anime", anime);
        intent.setFlags(268435456);
        startActivity(intent);
    }
}

package flix.com.vision.tv;

import C4.c0;
import U4.l;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import b.c;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import e.AbstractActivityC0842v;
import f1.RunnableC0883a;
import f5.F;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.ChannelTv;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class TVCategorySearchActivity extends AbstractActivityC0842v implements l {

    /* renamed from: b, reason: collision with root package name */
    public MaterialSearchView f16280b;

    /* renamed from: e, reason: collision with root package name */
    public SuperRecyclerView f16281e;

    /* renamed from: f, reason: collision with root package name */
    public c0 f16282f;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f16283j;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f16280b.isOpen()) {
            this.f16280b.closeSearch();
        } else {
            super.onBackPressed();
            finish();
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        new C0996j();
        this.f16283j = new ArrayList();
        setContentView(R.layout.activity_tv_category_search);
        this.f16282f = new c0(this.f16283j, this, this);
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f16280b = materialSearchView;
        materialSearchView.setShouldKeepHistory(false);
        this.f16280b.setTintAlpha(1);
        this.f16280b.setHint("Searching in all categories...");
        this.f16280b.setOnQueryTextListener(new F(this));
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("TV Genre Search");
        SuperRecyclerView superRecyclerView = (SuperRecyclerView) findViewById(R.id.recyclerview_categories);
        this.f16281e = superRecyclerView;
        superRecyclerView.setAdapter(this.f16282f);
        DisplayMetrics d7 = c.d(getWindowManager().getDefaultDisplay());
        this.f16281e.setLayoutManager(new CenterGridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140)));
        this.f16281e.addItemDecoration(new T4.l(5));
        new Handler().postDelayed(new RunnableC0883a(this, 5), 500L);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.adult_search_menu, menu);
        return true;
    }

    @Override // U4.l
    public void onLongPress(int i2, ArrayList<TVCategory> arrayList) {
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_search) {
            this.f16280b.openSearch();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.l
    public void openCategory(TVCategory tVCategory) {
        App.getInstance().f14435m.clear();
        Iterator it = App.getInstance().f14434j.iterator();
        while (it.hasNext()) {
            ChannelTv channelTv = (ChannelTv) it.next();
            if (channelTv.group_name.equalsIgnoreCase(tVCategory.getCategoryName())) {
                App.getInstance().f14435m.add(channelTv);
            }
        }
        Intent intent = new Intent(this, (Class<?>) ChannelsListActivity.class);
        intent.putExtra(C4913m.f14509i, tVCategory.getCategoryName());
        startActivity(intent);
    }
}

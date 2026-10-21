package flix.com.vision.tv;

import C4.C0096u;
import T4.l;
import T4.o;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.view.animation.AlphaAnimation;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import b.c;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.player.PlayerActivityLiveTV;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.StreamUrl;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class TVChannelFavoritesActivity extends AbstractActivityC0842v {

    /* renamed from: b, reason: collision with root package name */
    public SuperRecyclerView f16284b;

    /* renamed from: e, reason: collision with root package name */
    public C0096u f16285e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f16286f;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        new C0996j();
        this.f16286f = new ArrayList();
        setContentView(R.layout.activity_tv_channels_search_import);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        try {
            getSupportActionBar().setTitle("FAVORITES");
        } catch (Exception unused) {
        }
        this.f16284b = (SuperRecyclerView) findViewById(R.id.recyclerview_categories);
        DisplayMetrics d7 = c.d(getWindowManager().getDefaultDisplay());
        this.f16284b.setLayoutManager(new CenterGridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140)));
        this.f16284b.addItemDecoration(new l(5));
        this.f16286f.addAll(App.getInstance().f14439r.getFavoritesChannels());
        C0096u c0096u = new C0096u(this, this.f16286f, this, 1, 100);
        this.f16285e = c0096u;
        this.f16284b.setAdapter(c0096u);
        this.f16285e.notifyDataSetChanged();
        if (App.f14424I) {
            new AlphaAnimation(1.0f, 0.0f);
            new Handler();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.adult_search_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    public void playChannel(ChannelTv channelTv) {
        if (App.getInstance().f14440s.getInt("player_index", 0) == 0) {
            try {
                Intent intent = new Intent(this, (Class<?>) PlayerActivityLiveTV.class);
                intent.putExtra("channel", channelTv);
                startActivity(intent);
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        StreamUrl streamUrl = new StreamUrl();
        streamUrl.stream_url = channelTv.url;
        try {
            if (App.getInstance().f14440s.getInt("player_index", 0) == 1) {
                o.PlayMXPlayer(this, channelTv.label, streamUrl.stream_url, streamUrl.player_user_agent, streamUrl.player_referer, -1);
            } else if (App.getInstance().f14440s.getInt("player_index", 0) == 2) {
                o.PlayVLC(this, channelTv.label, streamUrl.stream_url, streamUrl.player_user_agent, streamUrl.player_referer, -1);
            } else if (App.getInstance().f14440s.getInt("player_index", 0) == 3) {
                o.PlayXPlayer(this, channelTv.label, streamUrl.stream_url);
            }
        } catch (Exception unused) {
            Toast.makeText(getBaseContext(), "Failed to load channel", 0).show();
        }
    }
}

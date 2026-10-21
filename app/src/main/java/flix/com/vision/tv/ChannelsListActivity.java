package flix.com.vision.tv;

import A.i;
import C4.C0096u;
import Q4.d;
import T4.o;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.player.PlayerActivityLiveTV;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.StreamUrl;
import flix.com.vision.tv.ChannelsListActivity;
import flix.com.vision.tv.TVChannelFavoritesActivity;
import flix.com.vision.tv.TVChannelSearchActivity;
import h5.AbstractC0995i;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ChannelsListActivity extends flix.com.vision.activities.base.a {

    /* renamed from: x, reason: collision with root package name */
    public static final /* synthetic */ int f16153x = 0;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f16155e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f16156f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f16157j;

    /* renamed from: m, reason: collision with root package name */
    public C0996j f16158m;

    /* renamed from: n, reason: collision with root package name */
    public Typeface f16159n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f16160p;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f16161q;

    /* renamed from: r, reason: collision with root package name */
    public LinearLayout f16162r;

    /* renamed from: s, reason: collision with root package name */
    public C0096u f16163s;

    /* renamed from: t, reason: collision with root package name */
    public C0096u f16164t;

    /* renamed from: u, reason: collision with root package name */
    public RecyclerView f16165u;

    /* renamed from: v, reason: collision with root package name */
    public RecyclerView f16166v;

    /* renamed from: b, reason: collision with root package name */
    public HashSet f16154b = new HashSet();

    /* renamed from: w, reason: collision with root package name */
    public String f16167w = "";

    public void channelLongPress(int i2, ArrayList<ChannelTv> arrayList) {
        final ChannelTv channelTv = arrayList.get(i2);
        if (this.f16154b.contains(channelTv.label)) {
            FragmentManager fragmentManager = getFragmentManager();
            d newInstance = d.newInstance(this, true);
            newInstance.setTitle(channelTv.label);
            newInstance.setMessage("What would you like to Do?");
            final int i7 = 0;
            newInstance.setButton1("REMOVE FAVORITE", new View.OnClickListener(this) { // from class: f5.b

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ChannelsListActivity f14393e;

                {
                    this.f14393e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChannelTv channelTv2 = channelTv;
                    ChannelsListActivity channelsListActivity = this.f14393e;
                    switch (i7) {
                        case 0:
                            int i8 = ChannelsListActivity.f16153x;
                            channelsListActivity.getClass();
                            AbstractC0995i.makeToast(channelsListActivity, "Removed From Favorites", true);
                            channelsListActivity.f16154b.remove(channelTv2.label);
                            App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                            channelsListActivity.updateFavoritesBar();
                            break;
                        case 1:
                            int i9 = ChannelsListActivity.f16153x;
                            channelsListActivity.playChannel(channelTv2);
                            break;
                        case 2:
                            int i10 = ChannelsListActivity.f16153x;
                            channelsListActivity.getClass();
                            AbstractC0995i.makeToast(channelsListActivity, "Added To Favorites", true);
                            channelsListActivity.f16154b.add(channelTv2.label);
                            App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                            channelsListActivity.updateFavoritesBar();
                            break;
                        default:
                            int i11 = ChannelsListActivity.f16153x;
                            channelsListActivity.playChannel(channelTv2);
                            break;
                    }
                }
            });
            final int i8 = 1;
            newInstance.setButton2("PLAY", new View.OnClickListener(this) { // from class: f5.b

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ChannelsListActivity f14393e;

                {
                    this.f14393e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChannelTv channelTv2 = channelTv;
                    ChannelsListActivity channelsListActivity = this.f14393e;
                    switch (i8) {
                        case 0:
                            int i82 = ChannelsListActivity.f16153x;
                            channelsListActivity.getClass();
                            AbstractC0995i.makeToast(channelsListActivity, "Removed From Favorites", true);
                            channelsListActivity.f16154b.remove(channelTv2.label);
                            App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                            channelsListActivity.updateFavoritesBar();
                            break;
                        case 1:
                            int i9 = ChannelsListActivity.f16153x;
                            channelsListActivity.playChannel(channelTv2);
                            break;
                        case 2:
                            int i10 = ChannelsListActivity.f16153x;
                            channelsListActivity.getClass();
                            AbstractC0995i.makeToast(channelsListActivity, "Added To Favorites", true);
                            channelsListActivity.f16154b.add(channelTv2.label);
                            App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                            channelsListActivity.updateFavoritesBar();
                            break;
                        default:
                            int i11 = ChannelsListActivity.f16153x;
                            channelsListActivity.playChannel(channelTv2);
                            break;
                    }
                }
            });
            try {
                newInstance.show(fragmentManager, "");
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        FragmentManager fragmentManager2 = getFragmentManager();
        d newInstance2 = d.newInstance(this, true);
        newInstance2.setTitle(channelTv.label);
        newInstance2.setMessage("What would you like to Do?");
        final int i9 = 2;
        newInstance2.setButton1("ADD TO FAVORITES", new View.OnClickListener(this) { // from class: f5.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ ChannelsListActivity f14393e;

            {
                this.f14393e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelTv channelTv2 = channelTv;
                ChannelsListActivity channelsListActivity = this.f14393e;
                switch (i9) {
                    case 0:
                        int i82 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        AbstractC0995i.makeToast(channelsListActivity, "Removed From Favorites", true);
                        channelsListActivity.f16154b.remove(channelTv2.label);
                        App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                        channelsListActivity.updateFavoritesBar();
                        break;
                    case 1:
                        int i92 = ChannelsListActivity.f16153x;
                        channelsListActivity.playChannel(channelTv2);
                        break;
                    case 2:
                        int i10 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        AbstractC0995i.makeToast(channelsListActivity, "Added To Favorites", true);
                        channelsListActivity.f16154b.add(channelTv2.label);
                        App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                        channelsListActivity.updateFavoritesBar();
                        break;
                    default:
                        int i11 = ChannelsListActivity.f16153x;
                        channelsListActivity.playChannel(channelTv2);
                        break;
                }
            }
        });
        final int i10 = 3;
        newInstance2.setButton2("PLAY", new View.OnClickListener(this) { // from class: f5.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ ChannelsListActivity f14393e;

            {
                this.f14393e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelTv channelTv2 = channelTv;
                ChannelsListActivity channelsListActivity = this.f14393e;
                switch (i10) {
                    case 0:
                        int i82 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        AbstractC0995i.makeToast(channelsListActivity, "Removed From Favorites", true);
                        channelsListActivity.f16154b.remove(channelTv2.label);
                        App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                        channelsListActivity.updateFavoritesBar();
                        break;
                    case 1:
                        int i92 = ChannelsListActivity.f16153x;
                        channelsListActivity.playChannel(channelTv2);
                        break;
                    case 2:
                        int i102 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        AbstractC0995i.makeToast(channelsListActivity, "Added To Favorites", true);
                        channelsListActivity.f16154b.add(channelTv2.label);
                        App.getInstance().f14440s.edit().putStringSet("pref_tv_channel_fav_" + channelsListActivity.f16167w, channelsListActivity.f16154b).apply();
                        channelsListActivity.updateFavoritesBar();
                        break;
                    default:
                        int i11 = ChannelsListActivity.f16153x;
                        channelsListActivity.playChannel(channelTv2);
                        break;
                }
            }
        });
        try {
            newInstance2.show(fragmentManager2, "");
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f16166v.hasFocus()) {
            super.onBackPressed();
        } else {
            this.f16166v.requestFocus();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 1;
        final int i7 = 0;
        final int i8 = 2;
        super.onCreate(bundle);
        setContentView(R.layout.channel_list_activity_import);
        this.f16167w = getIntent().getStringExtra(C4913m.f14509i);
        this.f16154b = new HashSet(App.getInstance().f14440s.getStringSet("pref_tv_channel_fav_" + this.f16167w, new HashSet()));
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f16159n = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f16158m = new C0996j();
        this.f16166v = (RecyclerView) findViewById(R.id.recyclerview_tv_channels_favorites);
        this.f16162r = (LinearLayout) findViewById(R.id.tv_favorites_channels_layout);
        this.f16157j = (RelativeLayout) findViewById(R.id.settings_button_adult);
        this.f16156f = (RelativeLayout) findViewById(R.id.favorites_button_adult);
        this.f16155e = (RelativeLayout) findViewById(R.id.search_button_adult);
        this.f16165u = (RecyclerView) findViewById(R.id.recyclerview);
        this.f16161q = (LinearLayout) findViewById(R.id.loader);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i9 = (int) ((displayMetrics.widthPixels / displayMetrics.density) / 220.0f);
        if (i9 < 2) {
            i9 = 2;
        }
        this.f16165u.setLayoutManager(new GridLayoutManager(this, i9));
        C0096u c0096u = new C0096u(getBaseContext(), App.getInstance().f14435m, this, 8989, 100);
        this.f16163s = c0096u;
        c0096u.setImportActivity(this);
        this.f16165u.setAdapter(this.f16163s);
        C0096u c0096u2 = new C0096u(getBaseContext(), App.getInstance().f14436n, this, 8989, 100);
        this.f16164t = c0096u2;
        c0096u2.setImportActivity(this);
        this.f16166v.setLayoutManager(new LinearLayoutManager(this, 0, false));
        this.f16166v.setAdapter(this.f16164t);
        TextView textView = (TextView) findViewById(R.id.adult_page_title);
        this.f16160p = textView;
        this.f16158m.applyFontToView(textView, this.f16159n);
        this.f16155e.setOnClickListener(new View.OnClickListener(this) { // from class: f5.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ ChannelsListActivity f14391e;

            {
                this.f14391e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelsListActivity channelsListActivity = this.f14391e;
                switch (i7) {
                    case 0:
                        int i10 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) TVChannelSearchActivity.class));
                        break;
                    case 1:
                        int i11 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) TVChannelFavoritesActivity.class));
                        break;
                    default:
                        int i12 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) SettingsActivity.class));
                        break;
                }
            }
        });
        this.f16156f.setOnClickListener(new View.OnClickListener(this) { // from class: f5.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ ChannelsListActivity f14391e;

            {
                this.f14391e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelsListActivity channelsListActivity = this.f14391e;
                switch (i2) {
                    case 0:
                        int i10 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) TVChannelSearchActivity.class));
                        break;
                    case 1:
                        int i11 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) TVChannelFavoritesActivity.class));
                        break;
                    default:
                        int i12 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) SettingsActivity.class));
                        break;
                }
            }
        });
        this.f16157j.setOnClickListener(new View.OnClickListener(this) { // from class: f5.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ ChannelsListActivity f14391e;

            {
                this.f14391e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelsListActivity channelsListActivity = this.f14391e;
                switch (i8) {
                    case 0:
                        int i10 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) TVChannelSearchActivity.class));
                        break;
                    case 1:
                        int i11 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) TVChannelFavoritesActivity.class));
                        break;
                    default:
                        int i12 = ChannelsListActivity.f16153x;
                        channelsListActivity.getClass();
                        channelsListActivity.startActivity(new Intent(channelsListActivity, (Class<?>) SettingsActivity.class));
                        break;
                }
            }
        });
        this.f16163s.notifyDataSetChanged();
        updateFavoritesBar();
        this.f16157j.clearFocus();
        this.f16155e.clearFocus();
        this.f16165u.requestFocus();
        if (!App.getInstance().f14440s.getBoolean("hint_tv_channels_shown", false)) {
            AbstractC0995i.makeToast(this, "You can long press on a Channel to pin it at the top of the list", true);
            i.x(App.getInstance().f14440s, "hint_tv_channels_shown", true);
        }
        if (App.f14424I) {
            new AlphaAnimation(1.0f, 0.0f);
            new Handler();
        }
        getIntent().getStringExtra("url");
        getIntent().getStringExtra("label");
        this.f16161q.setVisibility(8);
        this.f16160p.setText(this.f16167w + " · " + App.getInstance().f14435m.size());
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
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

    public void updateFavoritesBar() {
        try {
            App.getInstance().f14436n.clear();
            Iterator it = App.getInstance().f14435m.iterator();
            while (it.hasNext()) {
                ChannelTv channelTv = (ChannelTv) it.next();
                if (this.f16154b.contains(channelTv.label)) {
                    App.getInstance().f14436n.add(channelTv);
                }
            }
            Collections.reverse(App.getInstance().f14436n);
            if (App.getInstance().f14436n.isEmpty()) {
                this.f16162r.setVisibility(8);
            } else {
                this.f16162r.setVisibility(0);
                this.f16164t.notifyDataSetChanged();
            }
        } catch (Exception e3) {
            AbstractC0995i.makeToast(this, "ERROR: " + e3.getMessage(), false);
        }
    }
}

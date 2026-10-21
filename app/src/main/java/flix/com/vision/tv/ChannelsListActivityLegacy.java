package flix.com.vision.tv;

import B4.DialogInterfaceOnClickListenerC0039b;
import B4.DialogInterfaceOnDismissListenerC0040c;
import C4.C0096u;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.animation.AlphaAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import e.r;
import f1.RunnableC0883a;
import f5.C0929c;
import f5.m;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.ChannelTv;
import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class ChannelsListActivityLegacy extends flix.com.vision.activities.base.a {

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f16168y = 0;

    /* renamed from: b, reason: collision with root package name */
    public MaterialSearchView f16169b;

    /* renamed from: e, reason: collision with root package name */
    public ProgressBar f16170e;

    /* renamed from: f, reason: collision with root package name */
    public C0096u f16171f;

    /* renamed from: n, reason: collision with root package name */
    public RecyclerView f16174n;

    /* renamed from: q, reason: collision with root package name */
    public AlphaAnimation f16176q;

    /* renamed from: s, reason: collision with root package name */
    public Menu f16178s;

    /* renamed from: u, reason: collision with root package name */
    public Handler f16180u;

    /* renamed from: v, reason: collision with root package name */
    public RunnableC0883a f16181v;

    /* renamed from: w, reason: collision with root package name */
    public TextView f16182w;

    /* renamed from: x, reason: collision with root package name */
    public RelativeLayout f16183x;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f16172j = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f16173m = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public String f16175p = "";

    /* renamed from: r, reason: collision with root package name */
    public String f16177r = "";

    /* renamed from: t, reason: collision with root package name */
    public boolean f16179t = false;

    public void OpenChannel(ChannelTv channelTv) {
        if (channelTv.links.size() <= 1) {
            OpenChannell(channelTv);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < channelTv.links.size(); i2++) {
            arrayList.add(channelTv.links.get(i2).label);
        }
        CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new CharSequence[arrayList.size()]);
        r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogCustom));
        rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterfaceOnClickListenerC0039b(1, this, channelTv));
        rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(2));
        rVar.show();
    }

    public void OpenChannell(ChannelTv channelTv) {
        Intent intent = new Intent(this, (Class<?>) PlayerActivityLiveExtended.class);
        if (App.getInstance().f14440s.getInt("player_index", 0) != 0) {
            intent = new Intent(this, (Class<?>) PlayerActivityLiveExternal.class);
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        int i2 = App.getInstance().f14440s.getInt("player_index", 0) != 0 ? 2 : 1000;
        ArrayList<? extends Parcelable> arrayList2 = this.f16172j;
        if (arrayList2.size() > i2) {
            for (int i7 = 0; i7 < i2; i7++) {
                arrayList.add((ChannelTv) arrayList2.get(i7));
            }
            arrayList.add(0, channelTv);
            intent.putExtra(FirebaseAnalytics.Param.INDEX, 0);
            intent.putParcelableArrayListExtra("channels3g", arrayList);
        } else {
            intent.putExtra(FirebaseAnalytics.Param.INDEX, arrayList2.indexOf(channelTv));
            intent.putParcelableArrayListExtra("channels3g", arrayList2);
            intent.putExtra("img_url", channelTv.logoUrl);
            intent.putExtra("title_simple", channelTv.label);
        }
        try {
            startActivityForResult(intent, 9866);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void ToastChannel(String str) {
        this.f16183x.setAlpha(1.0f);
        this.f16180u.removeCallbacks(this.f16181v);
        this.f16180u.postDelayed(this.f16181v, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        this.f16182w.setText(str);
        this.f16183x.setVisibility(0);
    }

    public void categorySelected(String str) {
        this.f16170e.setVisibility(0);
        m.GetCategoriesChannels(Constant.f16184b, str, false);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f16169b.isOpen()) {
            this.f16169b.closeSearch();
        } else {
            super.onBackPressed();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.channel_list_new);
        EventBus.getDefault().register(this);
        String stringExtra = getIntent().getStringExtra(C4913m.f14507g);
        if (App.f14424I) {
            this.f16183x = (RelativeLayout) findViewById(R.id.toast_view);
            this.f16176q = new AlphaAnimation(1.0f, 0.0f);
            this.f16182w = (TextView) findViewById(R.id.customToastText);
            this.f16180u = new Handler();
            this.f16181v = new RunnableC0883a(this, 3);
        }
        getIntent().getStringExtra("url");
        String stringExtra2 = getIntent().getStringExtra("label");
        this.f16175p = stringExtra2;
        if (stringExtra2 == null) {
            this.f16175p = "";
        }
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setTitle(this.f16175p + ", " + getString(R.string.channels_label));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f16169b = materialSearchView;
        materialSearchView.adjustTintAlpha(0.0f);
        this.f16169b.setShouldKeepHistory(false);
        this.f16169b.setOnQueryTextListener(new C0929c(this));
        this.f16170e = (ProgressBar) findViewById(R.id.loader);
        this.f16174n = (RecyclerView) findViewById(R.id.recyclerview);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = (int) ((displayMetrics.widthPixels / displayMetrics.density) / 220.0f);
        if (i2 < 2) {
            i2 = 2;
        }
        this.f16174n.setLayoutManager(new CenterGridLayoutManager(this, i2));
        C0096u c0096u = new C0096u(getBaseContext(), this.f16172j, this, 8989, 100);
        this.f16171f = c0096u;
        this.f16174n.setAdapter(c0096u);
        categorySelected(stringExtra);
        this.f16177r = getIntent().getStringExtra(C4913m.f14509i);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.f16178s = menu;
        getMenuInflater().inflate(R.menu.menu_channel_list_2, menu);
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(R4.a aVar) {
        if (aVar != null) {
            ArrayList arrayList = aVar.f3128a;
            if (arrayList.size() > 0) {
                ArrayList arrayList2 = this.f16172j;
                arrayList2.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ChannelTv channelTv = (ChannelTv) it.next();
                    arrayList2.add(channelTv);
                    this.f16173m.add(channelTv);
                }
                this.f16171f.notifyDataSetChanged();
                this.f16170e.setVisibility(8);
                getSupportActionBar().setTitle(this.f16177r + ": " + arrayList2.size() + " Channels");
                this.f16174n.smoothScrollToPosition(0);
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_search) {
            this.f16169b.openSearch();
        } else if (itemId == R.id.action_favorites_channels_list) {
            boolean z6 = this.f16179t;
            this.f16179t = !z6;
            ArrayList arrayList = this.f16173m;
            ArrayList arrayList2 = this.f16172j;
            if (z6) {
                arrayList2.clear();
                arrayList2.addAll(arrayList);
                this.f16171f.notifyDataSetChanged();
                this.f16178s.findItem(R.id.action_favorites_channels_list).setIcon(R.drawable.ic_action_favorite_border);
            } else {
                ArrayList<ChannelTv> favoritesChannels = App.getInstance().f14439r.getFavoritesChannels();
                ArrayList arrayList3 = new ArrayList();
                Iterator<ChannelTv> it = favoritesChannels.iterator();
                while (it.hasNext()) {
                    arrayList3.add(it.next().label);
                }
                ArrayList arrayList4 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ChannelTv channelTv = (ChannelTv) it2.next();
                    String str = channelTv.label;
                    if (str != null && str.trim().length() > 1 && arrayList3.contains(channelTv.label)) {
                        arrayList4.add(channelTv);
                    }
                }
                if (arrayList4.size() > 0) {
                    arrayList2.clear();
                    arrayList2.addAll(arrayList4);
                    this.f16171f.notifyDataSetChanged();
                    this.f16178s.findItem(R.id.action_favorites_channels_list).setIcon(R.drawable.ic_action_favorite);
                } else {
                    Toast.makeText(this, getString(R.string.no_fav_channels_label), 0).show();
                    this.f16179t = false;
                }
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        MaterialSearchView materialSearchView = this.f16169b;
        if (materialSearchView != null) {
            materialSearchView.activityResumed();
            this.f16169b.closeSearch();
        }
        super.onResume();
    }
}

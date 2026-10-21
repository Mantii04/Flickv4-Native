package flix.com.vision.activities;

import B4.ViewOnClickListenerC0038a;
import C4.C0087k;
import U4.d;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import cz.msebera.android.httpclient.HttpStatus;
import e.DialogInterfaceC0839s;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Anime;
import java.util.ArrayList;
import y4.DialogInterfaceOnClickListenerC1899e;
import y4.DialogInterfaceOnClickListenerC1901f;
import y4.DialogInterfaceOnDismissListenerC1897d;

/* loaded from: classes2.dex */
public class AnimeHistoryActivity extends flix.com.vision.activities.base.a implements d {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f14473n = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f14474b = HttpStatus.SC_OK;

    /* renamed from: e, reason: collision with root package name */
    public SuperRecyclerView f14475e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f14476f;

    /* renamed from: j, reason: collision with root package name */
    public C0087k f14477j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f14478m;

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_anime_history);
        this.f14475e = (SuperRecyclerView) findViewById(R.id.recyclerview);
        this.f14478m = (RelativeLayout) findViewById(R.id.anime_favorites);
        this.f14476f = App.getInstance().f14439r.getWatchedMoviesFromDb_Anime();
        C0087k c0087k = new C0087k(getBaseContext(), this.f14476f, this, this.f14474b, this);
        this.f14477j = c0087k;
        this.f14475e.setAdapter(c0087k);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f14475e.setLayoutManager(new GridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140.0f)));
        this.f14478m.setOnClickListener(new ViewOnClickListenerC0038a(this, 10));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_wwe_history, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_wwe_clear) {
            DialogInterfaceC0839s create = new r(this).create();
            create.setMessage(getString(R.string.confirm_clear_wwe));
            create.setTitle(getString(R.string.clear_history_label));
            create.setOnDismissListener(new DialogInterfaceOnDismissListenerC1897d());
            create.setButton(-1, getString(R.string.yes_clear_label), new DialogInterfaceOnClickListenerC1899e(this));
            create.setButton(-2, getString(R.string.cancel_label), new DialogInterfaceOnClickListenerC1901f());
            try {
                create.show();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else if (itemId == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
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

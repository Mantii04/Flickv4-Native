package flix.com.vision.activities;

import C4.C0087k;
import U4.d;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.GridLayoutManager;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Anime;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class AnimesFavoritesAcvivity extends flix.com.vision.activities.base.a implements d {

    /* renamed from: b, reason: collision with root package name */
    public final int f14501b = HttpStatus.SC_OK;

    /* renamed from: e, reason: collision with root package name */
    public SuperRecyclerView f14502e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f14503f;

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_anime_favoritess);
        this.f14502e = (SuperRecyclerView) findViewById(R.id.recyclerview);
        this.f14503f = App.getInstance().f14439r.getFavoritesMoviesFromDb_Anime();
        this.f14502e.setAdapter(new C0087k(getBaseContext(), this.f14503f, this, this.f14501b, this));
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f14502e.setLayoutManager(new GridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140.0f)));
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

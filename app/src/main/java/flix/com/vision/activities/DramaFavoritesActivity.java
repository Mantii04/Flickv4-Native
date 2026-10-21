package flix.com.vision.activities;

import C4.C0101z;
import U4.e;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.GridLayoutManager;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Drama;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class DramaFavoritesActivity extends flix.com.vision.activities.base.a implements e {

    /* renamed from: b, reason: collision with root package name */
    public SuperRecyclerView f14572b;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f14573e;

    /* renamed from: f, reason: collision with root package name */
    public C0101z f14574f;

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_anime_favoritess);
        this.f14572b = (SuperRecyclerView) findViewById(R.id.recyclerview);
        ArrayList<Drama> dramaFavorites = App.getInstance().f14439r.getDramaFavorites();
        this.f14573e = dramaFavorites;
        C0101z c0101z = new C0101z(dramaFavorites, this, this);
        this.f14574f = c0101z;
        this.f14572b.setAdapter(c0101z);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f14572b.setLayoutManager(new GridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140.0f)));
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.e
    public void openDrama(Drama drama) {
        Intent intent = new Intent(this, (Class<?>) DramaDetailActivity.class);
        intent.putExtra("drama", drama);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    @Override // U4.e
    public void removeDramaFromFavorites(Drama drama) {
        this.f14573e.remove(drama);
        this.f14574f.notifyDataSetChanged();
    }
}

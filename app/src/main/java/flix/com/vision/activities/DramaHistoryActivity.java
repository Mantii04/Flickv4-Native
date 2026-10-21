package flix.com.vision.activities;

import B4.ViewOnClickListenerC0038a;
import C4.C0101z;
import U4.e;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Drama;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class DramaHistoryActivity extends flix.com.vision.activities.base.a implements e {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f14575m = 0;

    /* renamed from: b, reason: collision with root package name */
    public SuperRecyclerView f14576b;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f14577e;

    /* renamed from: f, reason: collision with root package name */
    public C0101z f14578f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14579j;

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_anime_history);
        this.f14576b = (SuperRecyclerView) findViewById(R.id.recyclerview);
        this.f14579j = (RelativeLayout) findViewById(R.id.anime_favorites);
        ArrayList<Drama> dramaHistory = App.getInstance().f14439r.getDramaHistory();
        this.f14577e = dramaHistory;
        C0101z c0101z = new C0101z(dramaHistory, this, this);
        this.f14578f = c0101z;
        this.f14576b.setAdapter(c0101z);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        this.f14576b.setLayoutManager(new GridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140.0f)));
        this.f14579j.setOnClickListener(new ViewOnClickListenerC0038a(this, 12));
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
    }
}

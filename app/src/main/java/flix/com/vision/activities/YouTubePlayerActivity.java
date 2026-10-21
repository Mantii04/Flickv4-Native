package flix.com.vision.activities;

import A4.q;
import B4.ViewOnClickListenerC0038a;
import Q4.d;
import android.app.FragmentManager;
import android.os.Bundle;
import android.os.Handler;
import androidx.media3.exoplayer.ExoPlayer;
import com.google.android.youtube.player.YouTubePlayerView;
import f1.RunnableC0883a;
import flix.com.vision.R;
import y4.B1;

/* loaded from: classes2.dex */
public class YouTubePlayerActivity extends N3.c {

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f15301r = 0;

    /* renamed from: n, reason: collision with root package name */
    public String f15303n;

    /* renamed from: p, reason: collision with root package name */
    public YouTubePlayerView f15304p;

    /* renamed from: m, reason: collision with root package name */
    public final String f15302m = "AIzaSyBzhds8N-w2US3XGiZ0gsGoXQolv3H1r1E";

    /* renamed from: q, reason: collision with root package name */
    public boolean f15305q = false;

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f15305q) {
            return;
        }
        this.f15305q = true;
        new Handler().postDelayed(new RunnableC0883a(this, 13), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to and exit trailer?");
        newInstance.setButton1("CANCEL", new q(12));
        newInstance.setButton2("YES", new ViewOnClickListenerC0038a(this, 16));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // N3.c, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_you_tube_player);
        this.f15304p = (YouTubePlayerView) findViewById(R.id.player);
        this.f15303n = getIntent().getStringExtra("id");
        this.f15304p.initialize(this.f15302m, new B1(this));
    }
}

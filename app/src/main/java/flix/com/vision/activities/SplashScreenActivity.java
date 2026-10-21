package flix.com.vision.activities;

import R4.d;
import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;
import androidx.media3.exoplayer.Renderer;
import com.github.ybq.android.spinkit.SpinKitView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.Calendar;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import y4.g1;

/* loaded from: classes2.dex */
public class SplashScreenActivity extends Activity {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f15230j = 0;

    /* renamed from: b, reason: collision with root package name */
    public long f15231b;

    /* renamed from: e, reason: collision with root package name */
    public SpinKitView f15232e;

    /* renamed from: f, reason: collision with root package name */
    public MediaPlayer f15233f;

    public final void a() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        startActivity((App.f14424I && App.getInstance().f14440s.getInt("pref_tv_layout", 0) == 0) ? new Intent(this, (Class<?>) MainActivityLeanback.class) : new Intent(this, (Class<?>) MainActivity.class));
        finish();
    }

    public final void b() {
        MediaPlayer mediaPlayer = this.f15233f;
        if (mediaPlayer != null) {
            try {
                if (mediaPlayer.isPlaying()) {
                    this.f15233f.stop();
                }
                this.f15233f.reset();
                this.f15233f.release();
                this.f15233f = null;
            } catch (Exception unused) {
                this.f15233f = null;
            } catch (Throwable th) {
                this.f15233f = null;
                throw th;
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            if (!isTaskRoot() && getIntent().hasCategory("android.intent.category.LAUNCHER") && getIntent().getAction() != null && getIntent().getAction().equals("android.intent.action.MAIN")) {
                if (SimpleVideoPlayer.f15629Q0) {
                    Intent intent = new Intent(this, (Class<?>) SimpleVideoPlayer.class);
                    intent.addFlags(131072);
                    startActivity(intent);
                }
                finish();
                return;
            }
        } catch (Exception unused) {
        }
        this.f15231b = System.currentTimeMillis();
        setContentView(R.layout.activity_splash_screen);
        this.f15232e = (SpinKitView) findViewById(R.id.loader);
        TextView textView = (TextView) findViewById(R.id.version);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        new C0996j().applyFontToView(textView, Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf"));
        try {
            String str2 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            textView.setText("©" + (Calendar.getInstance().get(1) + "") + " linktr.ee/flixvision · v" + str2);
        } catch (Exception unused2) {
            textView.setText("© FLIX VISION");
        }
        if (App.getInstance().f14440s.getBoolean("pref_play_intro_sound", true)) {
            new Handler().postDelayed(new g1(this, 0), 4000L);
        }
        new Handler().postDelayed(new g1(this, 1), 5000L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onInitializationComplete(d dVar) {
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        long currentTimeMillis = Renderer.DEFAULT_DURATION_TO_PROGRESS_US - (System.currentTimeMillis() - this.f15231b);
        if (currentTimeMillis > 0) {
            new Handler().postDelayed(new g1(this, 2), currentTimeMillis);
        } else {
            a();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
        if (App.f14429N) {
            onInitializationComplete(new d());
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        EventBus.getDefault().unregister(this);
    }
}

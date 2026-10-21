package com.google.android.gms.cast.framework.media.widget;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.internal.zzw;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzcr;
import com.google.android.gms.internal.cast.zzcu;
import com.google.android.gms.internal.cast.zzcv;
import com.google.android.gms.internal.cast.zzcw;
import com.google.android.gms.internal.cast.zzcx;
import com.google.android.gms.internal.cast.zzml;
import e.AbstractActivityC0842v;
import e.AbstractC0823b;
import java.util.Timer;

/* loaded from: classes.dex */
public abstract class ExpandedControllerActivity extends AbstractActivityC0842v implements ControlButtonsContainer {

    /* renamed from: Y, reason: collision with root package name */
    public static final /* synthetic */ int f10160Y = 0;

    /* renamed from: A, reason: collision with root package name */
    public int f10161A;

    /* renamed from: B, reason: collision with root package name */
    public int f10162B;

    /* renamed from: C, reason: collision with root package name */
    public int f10163C;

    /* renamed from: D, reason: collision with root package name */
    public TextView f10164D;

    /* renamed from: E, reason: collision with root package name */
    public CastSeekBar f10165E;

    /* renamed from: F, reason: collision with root package name */
    public ImageView f10166F;

    /* renamed from: G, reason: collision with root package name */
    public ImageView f10167G;

    /* renamed from: H, reason: collision with root package name */
    public int[] f10168H;

    /* renamed from: J, reason: collision with root package name */
    public View f10170J;

    /* renamed from: K, reason: collision with root package name */
    public View f10171K;

    /* renamed from: L, reason: collision with root package name */
    public ImageView f10172L;

    /* renamed from: M, reason: collision with root package name */
    public TextView f10173M;

    /* renamed from: N, reason: collision with root package name */
    public TextView f10174N;

    /* renamed from: O, reason: collision with root package name */
    public TextView f10175O;

    /* renamed from: P, reason: collision with root package name */
    public TextView f10176P;

    /* renamed from: Q, reason: collision with root package name */
    public com.google.android.gms.cast.framework.media.internal.zzb f10177Q;

    /* renamed from: R, reason: collision with root package name */
    public UIMediaController f10178R;

    /* renamed from: S, reason: collision with root package name */
    public SessionManager f10179S;

    /* renamed from: T, reason: collision with root package name */
    public Cast.Listener f10180T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f10181U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f10182V;

    /* renamed from: W, reason: collision with root package name */
    public Timer f10183W;

    /* renamed from: X, reason: collision with root package name */
    public String f10184X;

    /* renamed from: f, reason: collision with root package name */
    public int f10187f;

    /* renamed from: j, reason: collision with root package name */
    public int f10188j;

    /* renamed from: m, reason: collision with root package name */
    public int f10189m;

    /* renamed from: n, reason: collision with root package name */
    public int f10190n;

    /* renamed from: p, reason: collision with root package name */
    public int f10191p;

    /* renamed from: q, reason: collision with root package name */
    public int f10192q;

    /* renamed from: r, reason: collision with root package name */
    public int f10193r;

    /* renamed from: s, reason: collision with root package name */
    public int f10194s;

    /* renamed from: t, reason: collision with root package name */
    public int f10195t;

    /* renamed from: u, reason: collision with root package name */
    public int f10196u;

    /* renamed from: v, reason: collision with root package name */
    public int f10197v;

    /* renamed from: w, reason: collision with root package name */
    public int f10198w;

    /* renamed from: x, reason: collision with root package name */
    public int f10199x;

    /* renamed from: y, reason: collision with root package name */
    public int f10200y;

    /* renamed from: z, reason: collision with root package name */
    public int f10201z;

    /* renamed from: b, reason: collision with root package name */
    public final SessionManagerListener f10185b = new zzr(this);

    /* renamed from: e, reason: collision with root package name */
    public final RemoteMediaClient.Listener f10186e = new zzp(this);

    /* renamed from: I, reason: collision with root package name */
    public final ImageView[] f10169I = new ImageView[4];

    public final RemoteMediaClient e() {
        CastSession currentCastSession = this.f10179S.getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            return null;
        }
        return currentCastSession.getRemoteMediaClient();
    }

    public final void f(View view, int i2, int i7, UIMediaController uIMediaController) {
        ImageView imageView = (ImageView) view.findViewById(i2);
        if (i7 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i7 == R.id.cast_button_type_play_pause_toggle) {
            imageView.setBackgroundResource(this.f10187f);
            Drawable zzb = zzs.zzb(this, this.f10201z, this.f10189m);
            Drawable zzb2 = zzs.zzb(this, this.f10201z, this.f10188j);
            Drawable zzb3 = zzs.zzb(this, this.f10201z, this.f10190n);
            imageView.setImageDrawable(zzb2);
            uIMediaController.bindImageViewToPlayPauseToggle(imageView, zzb2, zzb, zzb3, null, false);
            return;
        }
        if (i7 == R.id.cast_button_type_skip_previous) {
            imageView.setBackgroundResource(this.f10187f);
            imageView.setImageDrawable(zzs.zzb(this, this.f10201z, this.f10191p));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
            uIMediaController.bindViewToSkipPrev(imageView, 0);
            return;
        }
        if (i7 == R.id.cast_button_type_skip_next) {
            imageView.setBackgroundResource(this.f10187f);
            imageView.setImageDrawable(zzs.zzb(this, this.f10201z, this.f10192q));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
            uIMediaController.bindViewToSkipNext(imageView, 0);
            return;
        }
        if (i7 == R.id.cast_button_type_rewind_30_seconds) {
            imageView.setBackgroundResource(this.f10187f);
            imageView.setImageDrawable(zzs.zzb(this, this.f10201z, this.f10193r));
            imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
            uIMediaController.bindViewToRewind(imageView, 30000L);
            return;
        }
        if (i7 == R.id.cast_button_type_forward_30_seconds) {
            imageView.setBackgroundResource(this.f10187f);
            imageView.setImageDrawable(zzs.zzb(this, this.f10201z, this.f10194s));
            imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
            uIMediaController.bindViewToForward(imageView, 30000L);
            return;
        }
        if (i7 == R.id.cast_button_type_mute_toggle) {
            imageView.setBackgroundResource(this.f10187f);
            imageView.setImageDrawable(zzs.zzb(this, this.f10201z, this.f10195t));
            uIMediaController.bindImageViewToMuteToggle(imageView);
        } else if (i7 == R.id.cast_button_type_closed_caption) {
            imageView.setBackgroundResource(this.f10187f);
            imageView.setImageDrawable(zzs.zzb(this, this.f10201z, this.f10196u));
            uIMediaController.bindViewToClosedCaption(imageView);
        }
    }

    public final void g(RemoteMediaClient remoteMediaClient) {
        MediaStatus mediaStatus;
        if (this.f10181U || (mediaStatus = remoteMediaClient.getMediaStatus()) == null || remoteMediaClient.isBuffering()) {
            return;
        }
        this.f10175O.setVisibility(8);
        this.f10176P.setVisibility(8);
        AdBreakClipInfo currentAdBreakClip = mediaStatus.getCurrentAdBreakClip();
        if (currentAdBreakClip == null || currentAdBreakClip.getWhenSkippableInMs() == -1) {
            return;
        }
        if (!this.f10182V) {
            zzk zzkVar = new zzk(this, remoteMediaClient);
            Timer timer = new Timer();
            this.f10183W = timer;
            timer.scheduleAtFixedRate(zzkVar, 0L, 500L);
            this.f10182V = true;
        }
        if (currentAdBreakClip.getWhenSkippableInMs() - remoteMediaClient.getApproximateAdBreakClipPositionMs() > 0.0f) {
            this.f10176P.setVisibility(0);
            this.f10176P.setText(getResources().getString(R.string.cast_expanded_controller_skip_ad_text, Integer.valueOf((int) Math.ceil(r11 / 1000.0f))));
            this.f10175O.setClickable(false);
        } else {
            if (this.f10182V) {
                this.f10183W.cancel();
                this.f10182V = false;
            }
            this.f10175O.setVisibility(0);
            this.f10175O.setClickable(true);
        }
    }

    public final void h() {
        CastDevice castDevice;
        CastSession currentCastSession = this.f10179S.getCurrentCastSession();
        if (currentCastSession != null && (castDevice = currentCastSession.getCastDevice()) != null) {
            String friendlyName = castDevice.getFriendlyName();
            if (!TextUtils.isEmpty(friendlyName)) {
                this.f10164D.setText(getResources().getString(R.string.cast_casting_to_device, friendlyName));
                return;
            }
        }
        this.f10164D.setText("");
    }

    public final void i() {
        MediaInfo mediaInfo;
        MediaMetadata metadata;
        AbstractC0823b supportActionBar;
        RemoteMediaClient e3 = e();
        if (e3 == null || !e3.hasMediaSession() || (mediaInfo = e3.getMediaInfo()) == null || (metadata = mediaInfo.getMetadata()) == null || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.setTitle(metadata.getString("com.google.android.gms.cast.metadata.TITLE"));
        String zze = zzw.zze(metadata);
        if (zze != null) {
            supportActionBar.setSubtitle(zze);
        }
    }

    public final void j() {
        MediaStatus mediaStatus;
        String str;
        Drawable drawable;
        Bitmap bitmap;
        Bitmap zza;
        RemoteMediaClient e3 = e();
        if (e3 == null || (mediaStatus = e3.getMediaStatus()) == null) {
            return;
        }
        String str2 = null;
        if (!mediaStatus.isPlayingAd()) {
            this.f10176P.setVisibility(8);
            this.f10175O.setVisibility(8);
            this.f10170J.setVisibility(8);
            this.f10167G.setVisibility(8);
            this.f10167G.setImageBitmap(null);
            return;
        }
        if (this.f10167G.getVisibility() == 8 && (drawable = this.f10166F.getDrawable()) != null && (drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null && (zza = zzs.zza(this, bitmap, 0.25f, 7.5f)) != null) {
            this.f10167G.setImageBitmap(zza);
            this.f10167G.setVisibility(0);
        }
        AdBreakClipInfo currentAdBreakClip = mediaStatus.getCurrentAdBreakClip();
        if (currentAdBreakClip != null) {
            String title = currentAdBreakClip.getTitle();
            str2 = currentAdBreakClip.getImageUrl();
            str = title;
        } else {
            str = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            this.f10177Q.zzd(Uri.parse(str2));
            this.f10171K.setVisibility(8);
        } else if (TextUtils.isEmpty(this.f10184X)) {
            this.f10173M.setVisibility(0);
            this.f10171K.setVisibility(0);
            this.f10172L.setVisibility(8);
        } else {
            this.f10177Q.zzd(Uri.parse(this.f10184X));
            this.f10171K.setVisibility(8);
        }
        TextView textView = this.f10174N;
        if (TextUtils.isEmpty(str)) {
            str = getResources().getString(R.string.cast_ad_label);
        }
        textView.setText(str);
        if (PlatformVersion.isAtLeastM()) {
            this.f10174N.setTextAppearance(this.f10161A);
        } else {
            this.f10174N.setTextAppearance(this, this.f10161A);
        }
        this.f10170J.setVisibility(0);
        g(e3);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SessionManager sessionManager = CastContext.getSharedInstance(this).getSessionManager();
        this.f10179S = sessionManager;
        if (sessionManager.getCurrentCastSession() == null) {
            finish();
        }
        UIMediaController uIMediaController = new UIMediaController(this);
        this.f10178R = uIMediaController;
        uIMediaController.setPostRemoteMediaClientListener(this.f10186e);
        setContentView(R.layout.cast_expanded_controller_activity);
        TypedArray obtainStyledAttributes = obtainStyledAttributes(new int[]{androidx.appcompat.R.attr.selectableItemBackgroundBorderless});
        this.f10187f = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.f10201z = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castButtonColor, 0);
        this.f10188j = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castPlayButtonDrawable, 0);
        this.f10189m = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castPauseButtonDrawable, 0);
        this.f10190n = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castStopButtonDrawable, 0);
        this.f10191p = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSkipPreviousButtonDrawable, 0);
        this.f10192q = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSkipNextButtonDrawable, 0);
        this.f10193r = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castRewind30ButtonDrawable, 0);
        this.f10194s = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castForward30ButtonDrawable, 0);
        this.f10195t = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castMuteToggleButtonDrawable, 0);
        this.f10196u = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castClosedCaptionsButtonDrawable, 0);
        int resourceId = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castControlButtons, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = getResources().obtainTypedArray(resourceId);
            Preconditions.checkArgument(obtainTypedArray.length() == 4);
            this.f10168H = new int[obtainTypedArray.length()];
            for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                this.f10168H[i2] = obtainTypedArray.getResourceId(i2, 0);
            }
            obtainTypedArray.recycle();
        } else {
            int i7 = R.id.cast_button_type_empty;
            this.f10168H = new int[]{i7, i7, i7, i7};
        }
        this.f10200y = obtainStyledAttributes2.getColor(R.styleable.CastExpandedController_castExpandedControllerLoadingIndicatorColor, 0);
        this.f10197v = getResources().getColor(obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdLabelColor, 0));
        this.f10198w = getResources().getColor(obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdInProgressTextColor, 0));
        this.f10199x = getResources().getColor(obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdLabelTextColor, 0));
        this.f10161A = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdLabelTextAppearance, 0);
        this.f10162B = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdInProgressLabelTextAppearance, 0);
        this.f10163C = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdInProgressText, 0);
        int resourceId2 = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castDefaultAdPosterUrl, 0);
        if (resourceId2 != 0) {
            this.f10184X = getApplicationContext().getResources().getString(resourceId2);
        }
        obtainStyledAttributes2.recycle();
        View findViewById = findViewById(R.id.expanded_controller_layout);
        UIMediaController uIMediaController2 = this.f10178R;
        this.f10166F = (ImageView) findViewById.findViewById(R.id.background_image_view);
        this.f10167G = (ImageView) findViewById.findViewById(R.id.blurred_background_image_view);
        View findViewById2 = findViewById.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        uIMediaController2.zzb(this.f10166F, new ImageHints(4, displayMetrics.widthPixels, displayMetrics.heightPixels), findViewById2, new zzn(this));
        this.f10164D = (TextView) findViewById.findViewById(R.id.status_text);
        ProgressBar progressBar = (ProgressBar) findViewById.findViewById(R.id.loading_indicator);
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        int i8 = this.f10200y;
        if (i8 != 0) {
            indeterminateDrawable.setColorFilter(i8, PorterDuff.Mode.SRC_IN);
        }
        uIMediaController2.bindViewToLoadingIndicator(progressBar);
        TextView textView = (TextView) findViewById.findViewById(R.id.start_text);
        TextView textView2 = (TextView) findViewById.findViewById(R.id.end_text);
        CastSeekBar castSeekBar = (CastSeekBar) findViewById.findViewById(R.id.cast_seek_bar);
        this.f10165E = castSeekBar;
        uIMediaController2.bindSeekBar(castSeekBar, 1000L);
        uIMediaController2.bindViewToUIController(textView, new zzcw(textView, uIMediaController2.zza()));
        uIMediaController2.bindViewToUIController(textView2, new zzcu(textView2, uIMediaController2.zza()));
        View findViewById3 = findViewById.findViewById(R.id.live_indicators);
        uIMediaController2.bindViewToUIController(findViewById3, new zzcv(findViewById3, uIMediaController2.zza()));
        RelativeLayout relativeLayout = (RelativeLayout) findViewById.findViewById(R.id.tooltip_container);
        zzcr zzcxVar = new zzcx(relativeLayout, this.f10165E, uIMediaController2.zza());
        uIMediaController2.bindViewToUIController(relativeLayout, zzcxVar);
        uIMediaController2.zzf(zzcxVar);
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.button_0);
        ImageView[] imageViewArr = this.f10169I;
        imageViewArr[0] = imageView;
        imageViewArr[1] = (ImageView) findViewById.findViewById(R.id.button_1);
        imageViewArr[2] = (ImageView) findViewById.findViewById(R.id.button_2);
        imageViewArr[3] = (ImageView) findViewById.findViewById(R.id.button_3);
        f(findViewById, R.id.button_0, this.f10168H[0], uIMediaController2);
        f(findViewById, R.id.button_1, this.f10168H[1], uIMediaController2);
        f(findViewById, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, uIMediaController2);
        f(findViewById, R.id.button_2, this.f10168H[2], uIMediaController2);
        f(findViewById, R.id.button_3, this.f10168H[3], uIMediaController2);
        View findViewById4 = findViewById(R.id.ad_container);
        this.f10170J = findViewById4;
        this.f10172L = (ImageView) findViewById4.findViewById(R.id.ad_image_view);
        this.f10171K = this.f10170J.findViewById(R.id.ad_background_image_view);
        TextView textView3 = (TextView) this.f10170J.findViewById(R.id.ad_label);
        this.f10174N = textView3;
        textView3.setTextColor(this.f10199x);
        this.f10174N.setBackgroundColor(this.f10197v);
        this.f10173M = (TextView) this.f10170J.findViewById(R.id.ad_in_progress_label);
        this.f10176P = (TextView) findViewById(R.id.ad_skip_text);
        TextView textView4 = (TextView) findViewById(R.id.ad_skip_button);
        this.f10175O = textView4;
        textView4.setOnClickListener(new zzi(this));
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        AbstractC0823b supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeAsUpIndicator(R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        }
        h();
        i();
        if (this.f10173M != null && this.f10163C != 0) {
            if (PlatformVersion.isAtLeastM()) {
                this.f10173M.setTextAppearance(this.f10162B);
            } else {
                this.f10173M.setTextAppearance(getApplicationContext(), this.f10162B);
            }
            this.f10173M.setTextColor(this.f10198w);
            this.f10173M.setText(this.f10163C);
        }
        com.google.android.gms.cast.framework.media.internal.zzb zzbVar = new com.google.android.gms.cast.framework.media.internal.zzb(getApplicationContext(), new ImageHints(-1, this.f10172L.getWidth(), this.f10172L.getHeight()));
        this.f10177Q = zzbVar;
        zzbVar.zzc(new zzh(this));
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAF_EXPANDED_CONTROLLER);
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        this.f10177Q.zza();
        UIMediaController uIMediaController = this.f10178R;
        if (uIMediaController != null) {
            uIMediaController.setPostRemoteMediaClientListener(null);
            this.f10178R.dispose();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        SessionManager sessionManager = this.f10179S;
        if (sessionManager == null) {
            return;
        }
        CastSession currentCastSession = sessionManager.getCurrentCastSession();
        Cast.Listener listener = this.f10180T;
        if (listener != null && currentCastSession != null) {
            currentCastSession.removeCastListener(listener);
            this.f10180T = null;
        }
        this.f10179S.removeSessionManagerListener(this.f10185b, CastSession.class);
        super.onPause();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        SessionManager sessionManager = this.f10179S;
        if (sessionManager == null) {
            return;
        }
        sessionManager.addSessionManagerListener(this.f10185b, CastSession.class);
        CastSession currentCastSession = this.f10179S.getCurrentCastSession();
        if (currentCastSession == null || !(currentCastSession.isConnected() || currentCastSession.isConnecting())) {
            finish();
        } else {
            zzl zzlVar = new zzl(this);
            this.f10180T = zzlVar;
            currentCastSession.addCastListener(zzlVar);
        }
        RemoteMediaClient e3 = e();
        boolean z6 = true;
        if (e3 != null && e3.hasMediaSession()) {
            z6 = false;
        }
        this.f10181U = z6;
        h();
        j();
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
            int i2 = systemUiVisibility ^ 2;
            if (PlatformVersion.isAtLeastJellyBean()) {
                i2 = systemUiVisibility ^ 6;
            }
            if (PlatformVersion.isAtLeastKitKat()) {
                i2 ^= 4096;
            }
            getWindow().getDecorView().setSystemUiVisibility(i2);
            setImmersive(true);
        }
    }
}

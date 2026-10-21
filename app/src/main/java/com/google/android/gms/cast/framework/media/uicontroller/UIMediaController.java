package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.C;
import androidx.fragment.app.H;
import androidx.fragment.app.v0;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.TracksChooserDialogFragment;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzbt;
import com.google.android.gms.internal.cast.zzbu;
import com.google.android.gms.internal.cast.zzbv;
import com.google.android.gms.internal.cast.zzbz;
import com.google.android.gms.internal.cast.zzca;
import com.google.android.gms.internal.cast.zzcb;
import com.google.android.gms.internal.cast.zzcc;
import com.google.android.gms.internal.cast.zzce;
import com.google.android.gms.internal.cast.zzcg;
import com.google.android.gms.internal.cast.zzch;
import com.google.android.gms.internal.cast.zzci;
import com.google.android.gms.internal.cast.zzcj;
import com.google.android.gms.internal.cast.zzcm;
import com.google.android.gms.internal.cast.zzcn;
import com.google.android.gms.internal.cast.zzco;
import com.google.android.gms.internal.cast.zzcr;
import com.google.android.gms.internal.cast.zzct;
import com.google.android.gms.internal.cast.zzml;
import com.google.android.gms.internal.cast.zzo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UIMediaController implements RemoteMediaClient.Listener, SessionManagerListener<CastSession> {

    /* renamed from: h, reason: collision with root package name */
    public static final Logger f10120h = new Logger("UIMediaController");

    /* renamed from: a, reason: collision with root package name */
    public final Activity f10121a;

    /* renamed from: b, reason: collision with root package name */
    public final SessionManager f10122b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10123c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f10124d = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public final zza f10125e = zza.zzf();

    /* renamed from: f, reason: collision with root package name */
    public RemoteMediaClient.Listener f10126f;

    /* renamed from: g, reason: collision with root package name */
    public RemoteMediaClient f10127g;

    public UIMediaController(Activity activity) {
        this.f10121a = activity;
        CastContext zza = CastContext.zza(activity);
        zzo.zzd(zzml.UI_MEDIA_CONTROLLER);
        SessionManager sessionManager = zza != null ? zza.getSessionManager() : null;
        this.f10122b = sessionManager;
        if (sessionManager != null) {
            sessionManager.addSessionManagerListener(this, CastSession.class);
            b(sessionManager.getCurrentCastSession());
        }
    }

    public final void a() {
        if (isActive()) {
            this.f10125e.f10128a = null;
            Iterator it = this.f10123c.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((List) it.next()).iterator();
                while (it2.hasNext()) {
                    ((UIController) it2.next()).onSessionEnded();
                }
            }
            Preconditions.checkNotNull(this.f10127g);
            this.f10127g.removeListener(this);
            this.f10127g = null;
        }
    }

    public final void b(CastSession castSession) {
        if (isActive() || castSession == null || !castSession.isConnected()) {
            return;
        }
        RemoteMediaClient remoteMediaClient = castSession.getRemoteMediaClient();
        this.f10127g = remoteMediaClient;
        if (remoteMediaClient != null) {
            remoteMediaClient.addListener(this);
            zza zzaVar = this.f10125e;
            Preconditions.checkNotNull(zzaVar);
            zzaVar.f10128a = castSession.getRemoteMediaClient();
            Iterator it = this.f10123c.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((List) it.next()).iterator();
                while (it2.hasNext()) {
                    ((UIController) it2.next()).onSessionConnected(castSession);
                }
            }
            d();
        }
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, ImageHints imageHints, int i2) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(imageView, new zzca(imageView, this.f10121a, imageHints, i2, null, null));
    }

    public void bindImageViewToMuteToggle(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zzb(this));
        c(imageView, new zzcg(imageView, this.f10121a));
    }

    public void bindImageViewToPlayPauseToggle(ImageView imageView, Drawable drawable, Drawable drawable2, Drawable drawable3, View view, boolean z6) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzo.zzd(zzml.PAUSE_CONTROLLER);
        imageView.setOnClickListener(new zzc(this));
        c(imageView, new zzch(imageView, this.f10121a, drawable, drawable2, drawable3, view, z6));
    }

    public void bindProgressBar(ProgressBar progressBar) {
        bindProgressBar(progressBar, 1000L);
    }

    public void bindSeekBar(CastSeekBar castSeekBar, long j7) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzo.zzd(zzml.SEEK_CONTROLLER);
        castSeekBar.f10148n = new zzh(this);
        c(castSeekBar, new zzbt(castSeekBar, j7, this.f10125e));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, String str) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        bindTextViewToMetadataOfCurrentItem(textView, Collections.singletonList(str));
    }

    public void bindTextViewToSmartSubtitle(TextView textView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(textView, new zzco(textView));
    }

    public void bindViewToClosedCaption(View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzk(this));
        c(view, new zzbu(view, this.f10121a));
    }

    public void bindViewToForward(View view, long j7) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzf(this, j7));
        c(view, new zzbv(view, this.f10125e));
    }

    public void bindViewToLaunchExpandedController(View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzj(this));
        c(view, new zzcb(view));
    }

    public void bindViewToLoadingIndicator(View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(view, new zzcc(view));
    }

    public void bindViewToRewind(View view, long j7) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzg(this, j7));
        c(view, new zzcj(view, this.f10125e));
    }

    public void bindViewToSkipNext(View view, int i2) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzd(this));
        c(view, new zzcm(view, i2));
    }

    public void bindViewToSkipPrev(View view, int i2) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zze(this));
        c(view, new zzcn(view, i2));
    }

    public void bindViewToUIController(View view, UIController uIController) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(view, uIController);
    }

    public void bindViewVisibilityToMediaSession(View view, int i2) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(view, new zzct(view, i2));
    }

    public final void c(View view, UIController uIController) {
        SessionManager sessionManager = this.f10122b;
        if (sessionManager == null) {
            return;
        }
        HashMap hashMap = this.f10123c;
        List list = (List) hashMap.get(view);
        if (list == null) {
            list = new ArrayList();
            hashMap.put(view, list);
        }
        list.add(uIController);
        if (isActive()) {
            uIController.onSessionConnected((CastSession) Preconditions.checkNotNull(sessionManager.getCurrentCastSession()));
            d();
        }
    }

    public final void d() {
        Iterator it = this.f10123c.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
                ((UIController) it2.next()).onMediaStatusUpdated();
            }
        }
    }

    public void dispose() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        a();
        this.f10123c.clear();
        SessionManager sessionManager = this.f10122b;
        if (sessionManager != null) {
            sessionManager.removeSessionManagerListener(this, CastSession.class);
        }
        this.f10126f = null;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f10127g;
    }

    public boolean isActive() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f10127g != null;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onAdBreakStatusUpdated() {
        d();
        RemoteMediaClient.Listener listener = this.f10126f;
        if (listener != null) {
            listener.onAdBreakStatusUpdated();
        }
    }

    public void onClosedCaptionClicked(View view) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        Activity activity = this.f10121a;
        if (activity instanceof H) {
            TracksChooserDialogFragment newInstance = TracksChooserDialogFragment.newInstance();
            H h7 = (H) activity;
            v0 beginTransaction = h7.getSupportFragmentManager().beginTransaction();
            C findFragmentByTag = h7.getSupportFragmentManager().findFragmentByTag("TRACKS_CHOOSER_DIALOG_TAG");
            if (findFragmentByTag != null) {
                beginTransaction.remove(findFragmentByTag);
            }
            newInstance.show(beginTransaction, "TRACKS_CHOOSER_DIALOG_TAG");
        }
    }

    public void onForwardClicked(View view, long j7) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        if (!remoteMediaClient.zzw()) {
            remoteMediaClient.seek(remoteMediaClient.getApproximateStreamPosition() + j7);
            return;
        }
        remoteMediaClient.seek(Math.min(remoteMediaClient.getApproximateStreamPosition() + j7, this.f10125e.zze() + r6.zzc()));
    }

    public void onLaunchExpandedControllerClicked(View view) {
        Activity activity = this.f10121a;
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(activity).getCastOptions().getCastMediaOptions();
        if (castMediaOptions == null || TextUtils.isEmpty(castMediaOptions.getExpandedControllerActivityClassName())) {
            return;
        }
        ComponentName componentName = new ComponentName(activity.getApplicationContext(), castMediaOptions.getExpandedControllerActivityClassName());
        Intent intent = new Intent();
        intent.setComponent(componentName);
        activity.startActivity(intent);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onMetadataUpdated() {
        d();
        RemoteMediaClient.Listener listener = this.f10126f;
        if (listener != null) {
            listener.onMetadataUpdated();
        }
    }

    public void onMuteToggleClicked(ImageView imageView) {
        CastSession currentCastSession = CastContext.getSharedInstance(this.f10121a.getApplicationContext()).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            return;
        }
        try {
            currentCastSession.setMute(!currentCastSession.isMute());
        } catch (IOException | IllegalArgumentException e3) {
            f10120h.e("Unable to call CastSession.setMute(boolean).", e3);
        }
    }

    public void onPlayPauseToggleClicked(ImageView imageView) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        remoteMediaClient.togglePlayback();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onPreloadStatusUpdated() {
        d();
        RemoteMediaClient.Listener listener = this.f10126f;
        if (listener != null) {
            listener.onPreloadStatusUpdated();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onQueueStatusUpdated() {
        d();
        RemoteMediaClient.Listener listener = this.f10126f;
        if (listener != null) {
            listener.onQueueStatusUpdated();
        }
    }

    public void onRewindClicked(View view, long j7) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        if (!remoteMediaClient.zzw()) {
            remoteMediaClient.seek(remoteMediaClient.getApproximateStreamPosition() - j7);
            return;
        }
        remoteMediaClient.seek(Math.max(remoteMediaClient.getApproximateStreamPosition() - j7, this.f10125e.zze() + r6.zzd()));
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onSendingRemoteMediaRequest() {
        Iterator it = this.f10123c.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
                ((UIController) it2.next()).onSendingRemoteMediaRequest();
            }
        }
        RemoteMediaClient.Listener listener = this.f10126f;
        if (listener != null) {
            listener.onSendingRemoteMediaRequest();
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionEnded(CastSession castSession, int i2) {
        a();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionEnding(CastSession castSession) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResumeFailed(CastSession castSession, int i2) {
        a();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResumed(CastSession castSession, boolean z6) {
        b(castSession);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResuming(CastSession castSession, String str) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStartFailed(CastSession castSession, int i2) {
        a();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStarted(CastSession castSession, String str) {
        b(castSession);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStarting(CastSession castSession) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionSuspended(CastSession castSession, int i2) {
    }

    public void onSkipNextClicked(View view) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        remoteMediaClient.queueNext(null);
    }

    public void onSkipPrevClicked(View view) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        remoteMediaClient.queuePrev(null);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onStatusUpdated() {
        d();
        RemoteMediaClient.Listener listener = this.f10126f;
        if (listener != null) {
            listener.onStatusUpdated();
        }
    }

    public void setPostRemoteMediaClientListener(RemoteMediaClient.Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.f10126f = listener;
    }

    public final zza zza() {
        return this.f10125e;
    }

    public final void zzb(ImageView imageView, ImageHints imageHints, View view, zzbz zzbzVar) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(imageView, new zzca(imageView, this.f10121a, imageHints, 0, view, zzbzVar));
    }

    public final void zzc(CastSeekBar castSeekBar, int i2, boolean z6) {
        if (z6) {
            Iterator it = this.f10124d.iterator();
            while (it.hasNext()) {
                ((zzcr) it.next()).zzb(this.f10125e.zze() + i2);
            }
        }
    }

    public final void zzd(CastSeekBar castSeekBar) {
        Iterator it = this.f10124d.iterator();
        while (it.hasNext()) {
            ((zzcr) it.next()).zza(false);
        }
    }

    public final void zze(CastSeekBar castSeekBar) {
        int progress = castSeekBar.getProgress();
        Iterator it = this.f10124d.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else {
                ((zzcr) it.next()).zza(true);
            }
        }
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        long j7 = progress;
        zza zzaVar = this.f10125e;
        long zze = zzaVar.zze() + j7;
        MediaSeekOptions.Builder builder = new MediaSeekOptions.Builder();
        builder.setPosition(zze);
        builder.setIsSeekToInfinite(remoteMediaClient.isLiveStream() && zzaVar.zzn(zze));
        remoteMediaClient.seek(builder.build());
    }

    public final void zzf(zzcr zzcrVar) {
        this.f10124d.add(zzcrVar);
    }

    public void bindProgressBar(ProgressBar progressBar, long j7) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(progressBar, new zzci(progressBar, j7));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, List<String> list) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        c(textView, new zzce(textView, list));
    }
}

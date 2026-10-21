package A0;

import B4.DialogInterfaceOnClickListenerC0062z;
import B4.RunnableC0055s;
import B4.ViewOnClickListenerC0045h;
import B4.ViewOnClickListenerC0046i;
import B4.ViewOnClickListenerC0054q;
import M.AbstractC0181p0;
import M.C0160f;
import P0.u;
import Q3.C0248s;
import R.f;
import R.k;
import S2.E;
import V3.q;
import Z2.m;
import Z2.o;
import a3.InterfaceC0385c;
import a3.InterfaceC0386d;
import a3.r;
import a5.C0398d;
import android.app.FragmentManager;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.media3.common.C;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.RandomTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import b3.InterfaceC0650a;
import c1.C0682L;
import c1.C0695Z;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponentDeferredProxy;
import com.google.firebase.crashlytics.internal.CrashlyticsRemoteConfigListener;
import com.google.firebase.crashlytics.internal.RemoteConfigDeferredProxy;
import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;
import com.google.firebase.crashlytics.internal.common.Utils;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigInfo;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.sessions.EventGDTLogger;
import com.google.firebase.sessions.SessionEvent;
import com.loopj.android.http.AsyncHttpClient;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.activities.player.PlayerActivityLiveTV;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;
import h5.AbstractC0995i;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import kotlin.jvm.internal.j;
import l.m2;
import n3.InterfaceC1416a;
import r1.i;
import r1.l;
import s0.InterfaceC1603A;
import s1.g;
import u0.InterfaceC1666g;
import v0.AbstractC1733q;
import v0.InterfaceC1728l;
import v0.P;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements InterfaceC1728l, InterfaceC1416a, m2, l, N.c, InterfaceC1603A, X2.a, f, Consumer, InterfaceC1666g, InterfaceC0650a, Response.ErrorListener, q, DefaultTrackSelector.TrackInfo.Factory, TrackSelectionUtil.AdaptiveTrackSelectionFactory, Deferred.DeferredHandler, Continuation, SuccessContinuation, P2.d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3e;

    public /* synthetic */ a(Object obj, int i2) {
        this.f2b = i2;
        this.f3e = obj;
    }

    public boolean a(k kVar, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 25 && (i2 & 1) != 0) {
            try {
                kVar.requestPermission();
                Parcelable parcelable = (Parcelable) kVar.unwrap();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e3) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e3);
                return false;
            }
        }
        return AbstractC0181p0.performReceiveContent((View) this.f3e, new C0160f(new ClipData(kVar.getDescription(), new ClipData.Item(kVar.getContentUri())), 2).setLinkUri(kVar.getLinkUri()).setExtras(bundle).build()) == null;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        switch (this.f2b) {
            case 10:
                S0.c cVar = (S0.c) obj;
                S0.l lVar = (S0.l) this.f3e;
                S0.k kVar = new S0.k(cVar.f3251b, lVar.f3261b.encode(cVar.f3250a, cVar.f3252c));
                lVar.f3263d.add(kVar);
                long j7 = lVar.f3270k;
                if (j7 == C.TIME_UNSET || cVar.f3253d >= j7) {
                    lVar.a(kVar);
                    break;
                }
                break;
            default:
                ((C0248s) this.f3e).add(obj);
                break;
        }
    }

    @Override // P2.d
    public Object apply(Object obj) {
        Q2.c cVar;
        byte[] encode;
        switch (this.f2b) {
            case 8:
                Q2.b bVar = (Q2.b) obj;
                Q2.d dVar = (Q2.d) this.f3e;
                W2.a.i("CctTransportBackend", "Making request to: %s", bVar.f2839a);
                HttpURLConnection httpURLConnection = (HttpURLConnection) bVar.f2839a.openConnection();
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.setReadTimeout(dVar.f2851g);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.9 android/");
                httpURLConnection.setRequestProperty("Content-Encoding", AsyncHttpClient.ENCODING_GZIP);
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
                httpURLConnection.setRequestProperty("Accept-Encoding", AsyncHttpClient.ENCODING_GZIP);
                String str = bVar.f2841c;
                if (str != null) {
                    httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
                }
                try {
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    try {
                        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                        try {
                            dVar.f2845a.encode(bVar.f2840b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                            gZIPOutputStream.close();
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            int responseCode = httpURLConnection.getResponseCode();
                            W2.a.i("CctTransportBackend", "Status Code: %d", Integer.valueOf(responseCode));
                            W2.a.d("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                            W2.a.d("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                            if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                                return new Q2.c(responseCode, new URL(httpURLConnection.getHeaderField(HttpHeaders.LOCATION)), 0L);
                            }
                            if (responseCode != 200) {
                                return new Q2.c(responseCode, null, 0L);
                            }
                            InputStream inputStream = httpURLConnection.getInputStream();
                            try {
                                InputStream gZIPInputStream = AsyncHttpClient.ENCODING_GZIP.equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                                try {
                                    Q2.c cVar2 = new Q2.c(responseCode, null, R2.C.fromJson(new BufferedReader(new InputStreamReader(gZIPInputStream))).getNextRequestWaitMillis());
                                    if (gZIPInputStream != null) {
                                        gZIPInputStream.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    return cVar2;
                                } finally {
                                }
                            } catch (Throwable th) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        } finally {
                        }
                    } catch (Throwable th3) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                } catch (EncodingException e3) {
                    e = e3;
                    W2.a.e("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                    cVar = new Q2.c(HttpStatus.SC_BAD_REQUEST, null, 0L);
                    return cVar;
                } catch (ConnectException e7) {
                    e = e7;
                    W2.a.e("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                    cVar = new Q2.c(500, null, 0L);
                    return cVar;
                } catch (UnknownHostException e8) {
                    e = e8;
                    W2.a.e("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                    cVar = new Q2.c(500, null, 0L);
                    return cVar;
                } catch (IOException e9) {
                    e = e9;
                    W2.a.e("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                    cVar = new Q2.c(HttpStatus.SC_BAD_REQUEST, null, 0L);
                    return cVar;
                }
            default:
                encode = ((EventGDTLogger) this.f3e).encode((SessionEvent) obj);
                return encode;
        }
    }

    public void b(Canvas canvas) {
        super/*android.widget.FrameLayout*/.dispatchDraw(canvas);
    }

    @Override // s0.InterfaceC1603A
    public void consume(long j7, ParsableByteArray parsableByteArray) {
        switch (this.f2b) {
            case 7:
                AbstractC1733q.consume(j7, parsableByteArray, ((u) this.f3e).f2642L);
                break;
            case 21:
                AbstractC1733q.consume(j7, parsableByteArray, ((C0682L) this.f3e).f8599c);
                break;
            default:
                AbstractC1733q.consumeCcData(j7, parsableByteArray, ((C0695Z) this.f3e).f8656c);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i2, TrackGroup trackGroup, int[] iArr) {
        List lambda$selectImageTrack$5;
        lambda$selectImageTrack$5 = DefaultTrackSelector.lambda$selectImageTrack$5((DefaultTrackSelector.Parameters) this.f3e, i2, trackGroup, iArr);
        return lambda$selectImageTrack$5;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
    public ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition) {
        ExoTrackSelection lambda$createTrackSelections$0;
        lambda$createTrackSelections$0 = ((RandomTrackSelection.Factory) this.f3e).lambda$createTrackSelections$0(definition);
        return lambda$createTrackSelections$0;
    }

    @Override // b3.InterfaceC0650a
    public Object execute() {
        switch (this.f2b) {
            case 13:
                ((r) ((m) this.f3e).f4501i).resetClientMetrics();
                return null;
            case 14:
                return ((r) ((InterfaceC0385c) this.f3e)).loadClientMetrics();
            case 15:
                return Integer.valueOf(((r) ((InterfaceC0386d) this.f3e)).cleanUp());
            default:
                o oVar = (o) this.f3e;
                Iterator<E> it = ((r) oVar.f4512b).loadActiveContexts().iterator();
                while (it.hasNext()) {
                    ((Z2.d) oVar.f4513c).schedule(it.next(), 1);
                }
                return null;
        }
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        switch (this.f2b) {
            case 23:
                ((CrashlyticsNativeComponentDeferredProxy) this.f3e).lambda$new$0(provider);
                break;
            default:
                RemoteConfigDeferredProxy.lambda$setupListener$0((CrashlyticsRemoteConfigListener) this.f3e, provider);
                break;
        }
    }

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        C0398d c0398d = (C0398d) this.f3e;
        c0398d.getClass();
        Log.d(MovieDetailActivity.class.toString(), "", null);
        c0398d.appendLog("getTorrentInfo:" + volleyError.getMessage());
    }

    @Override // l.m2
    public boolean onMenuItemClick(MenuItem menuItem) {
        String str = "";
        Object obj = this.f3e;
        int i2 = 1;
        switch (this.f2b) {
            case 2:
                int i7 = AdultVideoPlayerActivity.f15591z;
                AdultVideoPlayerActivity adultVideoPlayerActivity = (AdultVideoPlayerActivity) obj;
                adultVideoPlayerActivity.getClass();
                if (menuItem.getItemId() == R.id.action_related_videos) {
                    try {
                        adultVideoPlayerActivity.f15595j.scrollToPosition(0);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    if (adultVideoPlayerActivity.f15594f.getVisibility() == 0) {
                        adultVideoPlayerActivity.g();
                    } else {
                        adultVideoPlayerActivity.i();
                    }
                }
                menuItem.getItemId();
                return true;
            case 3:
                int i8 = PlayerActivityLiveTV.f15608B;
                PlayerActivityLiveTV playerActivityLiveTV = (PlayerActivityLiveTV) obj;
                if (menuItem.getItemId() == R.id.action_episodes) {
                    try {
                        playerActivityLiveTV.f15613j.scrollToPosition(playerActivityLiveTV.f15619s);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    playerActivityLiveTV.e();
                    return false;
                }
                if (menuItem.getItemId() != R.id.action_close) {
                    return false;
                }
                if (playerActivityLiveTV.f15612f.getVisibility() == 0) {
                    playerActivityLiveTV.f15612f.startAnimation(playerActivityLiveTV.f15616p);
                    playerActivityLiveTV.f15612f.setVisibility(8);
                    return true;
                }
                FragmentManager fragmentManager = playerActivityLiveTV.getFragmentManager();
                Q4.d newInstance = Q4.d.newInstance(playerActivityLiveTV, true);
                newInstance.setTitle("Exit");
                newInstance.setMessage("Do you really want to stop playback and exit ?");
                newInstance.setButton1("CANCEL", new ViewOnClickListenerC0045h());
                newInstance.setButton2("YES", new ViewOnClickListenerC0046i(playerActivityLiveTV));
                try {
                    newInstance.show(fragmentManager, "");
                    return false;
                } catch (Exception e8) {
                    e8.printStackTrace();
                    return false;
                }
            default:
                SimpleVideoPlayer simpleVideoPlayer = (SimpleVideoPlayer) obj;
                MenuItem findItem = simpleVideoPlayer.f15630A.getToolbar().getMenu().findItem(R.id.play_pause_button);
                if (menuItem.getItemId() == R.id.play_pause_button) {
                    try {
                        if (simpleVideoPlayer.f15630A.isPlaying()) {
                            simpleVideoPlayer.f15650K.setVisibility(0);
                            simpleVideoPlayer.f15630A.pause();
                            if (findItem != null) {
                                findItem.setIcon(R.drawable.play_circle_40px);
                            }
                            if (simpleVideoPlayer.f15670Y != null) {
                                App.getInstance().f14440s.edit().putInt(simpleVideoPlayer.f15670Y, (int) simpleVideoPlayer.f15630A.getCurrentPosition()).apply();
                            }
                            simpleVideoPlayer.requestAndDisplayAd();
                        } else if (simpleVideoPlayer.f15630A.isPrepared()) {
                            if (simpleVideoPlayer.f15679f != null && simpleVideoPlayer.f15645H0) {
                                simpleVideoPlayer.f15703u.setVisibility(8);
                            }
                            simpleVideoPlayer.f15650K.setImageResource(R.drawable.ic_play);
                            new Handler().postDelayed(new RunnableC0055s(simpleVideoPlayer, 10), 200L);
                            simpleVideoPlayer.f15687l0 = false;
                            if (findItem != null) {
                                findItem.setIcon(R.drawable.pause_circle_40px);
                            }
                            simpleVideoPlayer.f15630A.start();
                        }
                        simpleVideoPlayer.f15630A.showControls();
                    } catch (Exception e9) {
                        e9.printStackTrace();
                    }
                } else if (menuItem.getItemId() == R.id.hd_button) {
                    simpleVideoPlayer.j(simpleVideoPlayer.f15697r);
                } else if (menuItem.getItemId() == R.id.aspect_ratio_button) {
                    BetterVideoPlayer betterVideoPlayer = simpleVideoPlayer.f15630A;
                    if (betterVideoPlayer != null) {
                        int i9 = betterVideoPlayer.toggleAspectRatio();
                        if (i9 == 0) {
                            str = "Best Fit";
                        } else if (i9 == 1) {
                            str = "Zoom (Crop)";
                        } else if (i9 == 2) {
                            str = "Stretch";
                        }
                        try {
                            AbstractC0995i.makeToast(simpleVideoPlayer, "Aspect Ratio: ".concat(str), true);
                        } catch (Exception unused) {
                            Toast.makeText(simpleVideoPlayer, "Aspect Ratio: ".concat(str), 0).show();
                        }
                    }
                } else if (menuItem.getItemId() == R.id.episodes_button) {
                    if (simpleVideoPlayer.f15701t.getVisibility() != 0) {
                        simpleVideoPlayer.f15701t.setVisibility(0);
                        simpleVideoPlayer.f15701t.startAnimation(simpleVideoPlayer.f15641F0);
                        simpleVideoPlayer.f15705v.requestFocus();
                    } else {
                        simpleVideoPlayer.t();
                    }
                } else if (menuItem.getItemId() == R.id.subtitle_button) {
                    if (simpleVideoPlayer.f15646I != null) {
                        try {
                            simpleVideoPlayer.C();
                        } catch (Exception unused2) {
                        }
                    }
                } else if (menuItem.getItemId() == R.id.audio_track_button) {
                    ArrayList<K4.l> availableAudioTracks = simpleVideoPlayer.f15630A.getAvailableAudioTracks();
                    if (availableAudioTracks.isEmpty()) {
                        AbstractC0995i.makeToast(simpleVideoPlayer, "No alternative audio tracks found", false);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        int i10 = -1;
                        for (int i11 = 0; i11 < availableAudioTracks.size(); i11++) {
                            arrayList.add(availableAudioTracks.get(i11).f1801c);
                            if (availableAudioTracks.get(i11).f1802d) {
                                i10 = i11;
                            }
                        }
                        new e.r(new ContextThemeWrapper(simpleVideoPlayer, R.style.AlertDialogCustom)).setTitle("Select Audio Language").setSingleChoiceItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), i10, new DialogInterfaceOnClickListenerC0062z(simpleVideoPlayer, availableAudioTracks, i2)).show();
                    }
                } else if (menuItem.getItemId() == R.id.subtitle_gear_button) {
                    FragmentManager fragmentManager2 = simpleVideoPlayer.getFragmentManager();
                    Q4.d newInstance2 = Q4.d.newInstance(simpleVideoPlayer, true);
                    newInstance2.setTitle("Adjust Subtitles");
                    newInstance2.setMessage("You can change Subtitle Offset/Sync, Size and Encoding");
                    newInstance2.setButton1("OFFSET", new ViewOnClickListenerC0054q(simpleVideoPlayer, 15));
                    newInstance2.setButton2("SIZE", new ViewOnClickListenerC0054q(simpleVideoPlayer, 16));
                    newInstance2.setButton3("ENCODING", new ViewOnClickListenerC0054q(simpleVideoPlayer, 17));
                    try {
                        newInstance2.show(fragmentManager2, "");
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else if (menuItem.getItemId() == R.id.settings_button) {
                    simpleVideoPlayer.f15673b = true;
                    Intent intent = new Intent(simpleVideoPlayer, (Class<?>) SettingsActivity.class);
                    intent.addFlags(134742016);
                    simpleVideoPlayer.startActivity(intent);
                } else if (menuItem.getItemId() == R.id.close_button) {
                    simpleVideoPlayer.A();
                } else if (menuItem.getItemId() == R.id.skip_next_button && !simpleVideoPlayer.f15663R) {
                    int i12 = simpleVideoPlayer.f15682h0;
                    int i13 = i12 + 1;
                    simpleVideoPlayer.f15682h0 = i13;
                    if (i13 > simpleVideoPlayer.f15660P.size()) {
                        simpleVideoPlayer.f15682h0 = 1;
                    }
                    simpleVideoPlayer.x(i12);
                }
                return true;
        }
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        Task lambda$fetchFromBackendAndCacheResponse$4;
        lambda$fetchFromBackendAndCacheResponse$4 = ConfigFetchHandler.lambda$fetchFromBackendAndCacheResponse$4((ConfigFetchHandler.FetchResponse) this.f3e, (ConfigContainer) obj);
        return lambda$fetchFromBackendAndCacheResponse$4;
    }

    @Override // v0.InterfaceC1728l
    public long timeUsToTargetTime(long j7) {
        return ((P) this.f3e).getSampleNumber(j7);
    }

    @Override // r1.l
    public r1.m create(r1.k configuration) {
        Context context = (Context) this.f3e;
        j.checkNotNullParameter(context, "$context");
        j.checkNotNullParameter(configuration, "configuration");
        i builder = r1.k.f19720f.builder(context);
        builder.name(configuration.f19722b).callback(configuration.f19723c).noBackupDirectory(true).allowDataLossOnRecovery(true);
        return new g().create(builder.build());
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        boolean onReportSendComplete;
        Object lambda$awaitEvenIfOnMainThread$4;
        FirebaseRemoteConfigInfo lambda$ensureInitialized$0;
        switch (this.f2b) {
            case 25:
                onReportSendComplete = ((SessionReportingCoordinator) this.f3e).onReportSendComplete(task);
                return Boolean.valueOf(onReportSendComplete);
            case 26:
                lambda$awaitEvenIfOnMainThread$4 = Utils.lambda$awaitEvenIfOnMainThread$4((CountDownLatch) this.f3e, task);
                return lambda$awaitEvenIfOnMainThread$4;
            default:
                lambda$ensureInitialized$0 = FirebaseRemoteConfig.lambda$ensureInitialized$0((Task) this.f3e, task);
                return lambda$ensureInitialized$0;
        }
    }
}

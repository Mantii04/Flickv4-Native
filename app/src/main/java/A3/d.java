package A3;

import A4.n;
import B1.AbstractC0037q;
import B1.t;
import B4.M;
import C1.G;
import D.r;
import I.s;
import I1.p;
import J.q;
import K1.E;
import K1.F;
import K1.U;
import K3.C0138d;
import W.l;
import Z4.C0368b;
import Z4.C0370d;
import Z4.D;
import android.app.FragmentManager;
import android.graphics.Typeface;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.emoji2.text.C;
import androidx.emoji2.text.o;
import androidx.emoji2.text.y;
import androidx.lifecycle.J;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import b4.AbstractC0664n;
import b4.C0654d;
import b4.C0661k;
import b4.C0663m;
import c4.C0731a;
import c4.C0732b;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.installations.FirebaseInstallations;
import flix.com.vision.App;
import flix.com.vision.activities.leanback.CastMoviesActivityLeanBack;
import flix.com.vision.activities.leanback.FilterActivityLeanBack;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.activities.player.WebPlayerActivity;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f27b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f28e;

    public /* synthetic */ d(Object obj, int i2) {
        this.f27b = i2;
        this.f28e = obj;
    }

    private final void a() {
        y yVar = (y) this.f28e;
        synchronized (yVar.f6029d) {
            try {
                if (yVar.f6033h == null) {
                    return;
                }
                try {
                    q c7 = yVar.c();
                    int resultCode = c7.getResultCode();
                    if (resultCode == 2) {
                        synchronized (yVar.f6029d) {
                        }
                    }
                    if (resultCode != 0) {
                        throw new RuntimeException("fetchFonts result is not OK. (" + resultCode + ")");
                    }
                    try {
                        s.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                        Typeface buildTypeface = yVar.f6028c.buildTypeface(yVar.f6026a, c7);
                        ByteBuffer mmap = r.mmap(yVar.f6026a, null, c7.getUri());
                        if (mmap == null || buildTypeface == null) {
                            throw new RuntimeException("Unable to open file.");
                        }
                        C create = C.create(buildTypeface, mmap);
                        s.endSection();
                        synchronized (yVar.f6029d) {
                            try {
                                o oVar = yVar.f6033h;
                                if (oVar != null) {
                                    oVar.onLoaded(create);
                                }
                            } finally {
                            }
                        }
                        yVar.a();
                    } catch (Throwable th) {
                        s.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    synchronized (yVar.f6029d) {
                        try {
                            o oVar2 = yVar.f6033h;
                            if (oVar2 != null) {
                                oVar2.onFailed(th2);
                            }
                            yVar.a();
                        } finally {
                        }
                    }
                }
            } finally {
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        ArrayList arrayList;
        switch (this.f27b) {
            case 0:
                ((z3.f) this.f28e).startListeningForBackCallbacksWithPriorityOverlay();
                return;
            case 1:
                ((CastMoviesActivityLeanBack) this.f28e).f15420F = false;
                return;
            case 2:
                ((FilterActivityLeanBack) this.f28e).f15457R = false;
                return;
            case 3:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                ((TextView) this.f28e).animate().alpha(1.0f).translationX(0.0f).setDuration(800L).setInterpolator(new DecelerateInterpolator()).start();
                return;
            case 4:
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                ((LinearLayout) this.f28e).setVisibility(8);
                return;
            case 5:
                int i2 = WebPlayerActivity.f15715O;
                WebPlayerActivity webPlayerActivity = (WebPlayerActivity) this.f28e;
                FragmentManager fragmentManager = webPlayerActivity.getFragmentManager();
                Q4.d newInstance = Q4.d.newInstance(webPlayerActivity, false);
                newInstance.setTitle("Did you know?");
                newInstance.setCancelable(false);
                newInstance.setMessage("You can hide the server name and movie title at the top corner left from the settings");
                newInstance.setButton1("NO THANKS", new M(webPlayerActivity, 4));
                newInstance.setButton2("GO TO SETTINGS", new M(webPlayerActivity, 5));
                try {
                    newInstance.show(fragmentManager, "");
                } catch (Exception e3) {
                    webPlayerActivity.f15726K = false;
                    e3.printStackTrace();
                }
                A.i.x(App.getInstance().f14440s, "pref_hide_watermark_tip", false);
                return;
            case 6:
                H3.i iVar = (H3.i) this.f28e;
                iVar.f1213c = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) iVar.f1215e;
                l lVar = sideSheetBehavior.f12798r;
                if (lVar != null && lVar.continueSettling(true)) {
                    iVar.a(iVar.f1212b);
                    return;
                } else {
                    if (sideSheetBehavior.f12797q == 2) {
                        sideSheetBehavior.a(iVar.f1212b);
                        return;
                    }
                    return;
                }
            case 7:
                I4.e eVar = (I4.e) this.f28e;
                eVar.getClass();
                try {
                    N4.a.Success(eVar.f1387a.getApplicationContext(), "Successfully logged In", null, 80, 0);
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 8:
                ((C0138d) this.f28e).o(true);
                return;
            case 9:
                K3.l lVar2 = (K3.l) this.f28e;
                boolean isPopupShowing = lVar2.f1684h.isPopupShowing();
                lVar2.o(isPopupShowing);
                lVar2.f1689m = isPopupShowing;
                return;
            case 10:
                ((TextInputLayout) this.f28e).f12907j.requestLayout();
                return;
            case 11:
                View view = (View) this.f28e;
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                return;
            case 12:
                ConstraintTrackingWorker this$0 = (ConstraintTrackingWorker) this.f28e;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                if (this$0.f8326q.isCancelled()) {
                    return;
                }
                String string = this$0.getInputData().getString("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
                t tVar = t.get();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(tVar, "get()");
                if (string == null || string.length() == 0) {
                    str = O1.a.f2399a;
                    tVar.error(str, "No worker to delegate to.");
                    M1.g future = this$0.f8326q;
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(future, "future");
                    future.set(AbstractC0037q.failure());
                    return;
                }
                B1.r createWorkerWithDefaultFallback = this$0.getWorkerFactory().createWorkerWithDefaultFallback(this$0.getApplicationContext(), string, this$0.f8323m);
                this$0.f8327r = createWorkerWithDefaultFallback;
                if (createWorkerWithDefaultFallback == null) {
                    str6 = O1.a.f2399a;
                    tVar.debug(str6, "No worker to delegate to.");
                    M1.g future2 = this$0.f8326q;
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(future2, "future");
                    future2.set(AbstractC0037q.failure());
                    return;
                }
                G g7 = G.getInstance(this$0.getApplicationContext());
                kotlin.jvm.internal.j.checkNotNullExpressionValue(g7, "getInstance(applicationContext)");
                F workSpecDao = g7.getWorkDatabase().workSpecDao();
                String uuid = this$0.getId().toString();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(uuid, "id.toString()");
                E workSpec = ((U) workSpecDao).getWorkSpec(uuid);
                if (workSpec == null) {
                    M1.g future3 = this$0.f8326q;
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(future3, "future");
                    future3.set(AbstractC0037q.failure());
                    return;
                }
                p trackers = g7.getTrackers();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(trackers, "workManagerImpl.trackers");
                G1.e eVar2 = new G1.e(trackers, this$0);
                eVar2.replace(v5.o.listOf(workSpec));
                String uuid2 = this$0.getId().toString();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(uuid2, "id.toString()");
                if (!eVar2.areAllConstraintsMet(uuid2)) {
                    str2 = O1.a.f2399a;
                    tVar.debug(str2, "Constraints not met for delegate " + string + ". Requesting retry.");
                    M1.g future4 = this$0.f8326q;
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(future4, "future");
                    future4.set(AbstractC0037q.retry());
                    return;
                }
                str3 = O1.a.f2399a;
                tVar.debug(str3, "Constraints met for delegate ".concat(string));
                try {
                    B1.r rVar = this$0.f8327r;
                    kotlin.jvm.internal.j.checkNotNull(rVar);
                    V3.F startWork = rVar.startWork();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(startWork, "delegate!!.startWork()");
                    startWork.addListener(new n(11, this$0, startWork), this$0.getBackgroundExecutor());
                    return;
                } catch (Throwable th) {
                    str4 = O1.a.f2399a;
                    tVar.debug(str4, A.i.l("Delegated worker ", string, " threw exception in startWork."), th);
                    synchronized (this$0.f8324n) {
                        try {
                            if (!this$0.f8325p) {
                                M1.g future5 = this$0.f8326q;
                                kotlin.jvm.internal.j.checkNotNullExpressionValue(future5, "future");
                                future5.set(AbstractC0037q.failure());
                                return;
                            } else {
                                str5 = O1.a.f2399a;
                                tVar.debug(str5, "Constraints were unmet, Retrying.");
                                M1.g future6 = this$0.f8326q;
                                kotlin.jvm.internal.j.checkNotNullExpressionValue(future6, "future");
                                future6.set(AbstractC0037q.retry());
                                return;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            case 13:
                ImageButton imageButton = ((Q4.g) this.f28e).f2988b;
                if (imageButton != null) {
                    imageButton.requestFocus();
                    return;
                }
                return;
            case 14:
                Z2.o oVar = (Z2.o) this.f28e;
                ((a3.r) oVar.f4514d).runCriticalSection(new A0.a(oVar, 16));
                return;
            case 15:
                Z4.e eVar3 = ((C0370d) this.f28e).f4540a;
                WebView webView = eVar3.f4541a;
                if (webView == null) {
                    return;
                }
                webView.evaluateJavascript("(function(){return document.documentElement.innerHTML;})()", new C0368b(eVar3));
                return;
            case 16:
                ((Z4.j) this.f28e).f4565l = false;
                return;
            case 17:
                ((Z4.t) this.f28e).f4599l = false;
                return;
            case 18:
                ((Z4.y) this.f28e).f4613i = false;
                return;
            case 19:
                ((D) this.f28e).f4532k = false;
                return;
            case 20:
                ((ComponentActivity) this.f28e).invalidateMenu();
                return;
            case 21:
                androidx.activity.o oVar2 = (androidx.activity.o) this.f28e;
                Runnable runnable = oVar2.f4880e;
                if (runnable != null) {
                    runnable.run();
                    oVar2.f4880e = null;
                    return;
                }
                return;
            case 22:
                androidx.activity.p.a((androidx.activity.p) this.f28e);
                return;
            case 23:
                a();
                return;
            case 24:
                J this$02 = (J) this.f28e;
                kotlin.jvm.internal.j.checkNotNullParameter(this$02, "this$0");
                this$02.dispatchPauseIfNeeded$lifecycle_process_release();
                this$02.dispatchStopIfNeeded$lifecycle_process_release();
                return;
            case 25:
                ((DefaultAnalyticsCollector) this.f28e).releaseInternal();
                return;
            case 26:
                ((SsMediaSource) this.f28e).startLoadingManifest();
                return;
            case 27:
                ((AdsMediaSource) this.f28e).maybeUpdateSourceInfo();
                return;
            case 28:
                C0663m c0663m = (C0663m) this.f28e;
                try {
                    String b7 = c0663m.b();
                    String a7 = C0663m.a(b7);
                    AbstractC0664n.a(b7);
                    if (c0663m.f8514i.equals(a7)) {
                        return;
                    }
                    if (!c0663m.f8514i.isEmpty() && c0663m.f8512g != null && (arrayList = c0663m.f8513h) != null && !arrayList.isEmpty()) {
                        c0663m.f8512g.a(c0663m.f8513h);
                        Thread.sleep(5000L);
                    }
                    C0732b c0732b = new C0732b(b7);
                    AbstractC0664n.b(c0732b.b("enableRemoteLogging"));
                    C0731a c7 = c0732b.c("modules");
                    c0663m.f8513h = new ArrayList();
                    for (int i7 = 0; i7 < c7.a(); i7++) {
                        c0663m.f8513h.add(new C0654d(c7.b(i7)));
                    }
                    new C0661k(c0663m.f8506a).a(c0663m.f8513h);
                    c0663m.f8512g.b(c0663m.f8513h);
                    c0663m.f8514i = a7;
                    return;
                } catch (Exception e7) {
                    AbstractC0664n.a("Update check failed", e7);
                    return;
                }
            default:
                ((FirebaseInstallations) this.f28e).lambda$getId$1();
                return;
        }
    }
}

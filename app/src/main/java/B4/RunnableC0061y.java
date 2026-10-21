package B4;

import android.app.FragmentManager;
import android.app.ProgressDialog;
import android.media.AudioTrack;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.emoji2.text.AbstractC0448g;
import androidx.media3.common.Format;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import b4.C0654d;
import b4.C0660j;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.Utils;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import java.io.File;
import java.util.Scanner;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import y4.RunnableC1894b1;

/* renamed from: B4.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0061y implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f290b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f291e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f292f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f293j;

    public /* synthetic */ RunnableC0061y(Object obj, Object obj2, Object obj3, int i2) {
        this.f290b = i2;
        this.f291e = obj;
        this.f292f = obj2;
        this.f293j = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 1;
        Object obj = this.f291e;
        Object obj2 = this.f293j;
        Object obj3 = this.f292f;
        switch (this.f290b) {
            case 0:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                ((TextView) obj).animate().alpha(0.0f).translationX(-50.0f).setDuration(600L).withEndAction(new A4.n(5, (View) obj3, (LinearLayout) obj2)).start();
                return;
            case 1:
                androidx.emoji2.text.o oVar = (androidx.emoji2.text.o) obj3;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) obj2;
                try {
                    androidx.emoji2.text.z create = AbstractC0448g.create(((androidx.emoji2.text.s) obj).f6011a);
                    if (create == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    create.setLoadingExecutor(threadPoolExecutor);
                    create.getMetadataRepoLoader().load(new androidx.emoji2.text.r(oVar, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    oVar.onFailed(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 2:
                Util.lambda$postOrRunWithCompletion$0((V3.M) obj, (Runnable) obj3, obj2);
                return;
            case 3:
                Util.lambda$transformFutureAsync$2((V3.F) obj, (V3.M) obj3, (V3.q) obj2);
                return;
            case 4:
                ((AudioRendererEventListener.EventDispatcher) obj).lambda$inputFormatChanged$2((Format) obj3, (DecoderReuseEvaluation) obj2);
                return;
            case 5:
                AudioTrackAudioOutput.lambda$releaseAudioTrackAsync$1((AudioTrack) obj, (Handler) obj3, (ListenerSet) obj2);
                return;
            case 6:
                ((DrmSessionEventListener.EventDispatcher) obj).lambda$drmSessionManagerError$2((DrmSessionEventListener) obj3, (Exception) obj2);
                return;
            case 7:
                ((DrmSessionEventListener.EventDispatcher) obj).lambda$drmKeysLoaded$1((DrmSessionEventListener) obj3, (KeyRequestInfo) obj2);
                return;
            case 8:
                CountDownLatch countDownLatch = (CountDownLatch) obj2;
                try {
                    ((C0660j) obj).e((C0654d) obj3);
                } finally {
                    try {
                        return;
                    } finally {
                    }
                }
                return;
            case 9:
                Utils.lambda$callTask$3((Callable) obj, (Executor) obj3, (TaskCompletionSource) obj2);
                return;
            case 10:
                ((BiConsumer) obj).accept((String) obj3, (ConfigContainer) obj2);
                return;
            case 11:
                int i7 = SettingsActivity.f15080c2;
                SettingsActivity settingsActivity = (SettingsActivity) obj;
                settingsActivity.getClass();
                ((ProgressDialog) obj3).dismiss();
                TextView textView = settingsActivity.f15099G;
                StringBuilder sb = new StringBuilder("Saved to Downloads: ");
                String str = (String) obj2;
                sb.append(str);
                textView.setText(sb.toString());
                FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                newInstance.setTitle("Backup Complete");
                newInstance.setMessage("File saved to your Downloads folder as:\n\n" + str);
                newInstance.setButton1("OK", new A4.o(newInstance, 13));
                try {
                    newInstance.show(fragmentManager, "");
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 12:
                int i8 = SettingsActivity.f15080c2;
                SettingsActivity settingsActivity2 = (SettingsActivity) obj;
                settingsActivity2.getClass();
                ((ProgressDialog) obj3).dismiss();
                Toast.makeText(settingsActivity2, "Export Failed: " + ((Exception) obj2).getMessage(), 1).show();
                return;
            default:
                File file = (File) obj3;
                ProgressDialog progressDialog = (ProgressDialog) obj2;
                int i9 = SettingsActivity.f15080c2;
                SettingsActivity settingsActivity3 = (SettingsActivity) obj;
                try {
                    StringBuilder sb2 = new StringBuilder();
                    Scanner scanner = new Scanner(file);
                    while (scanner.hasNextLine()) {
                        sb2.append(scanner.nextLine());
                    }
                    scanner.close();
                    P4.b.restoreFromJson(settingsActivity3, sb2.toString());
                    settingsActivity3.runOnUiThread(new RunnableC1894b1(settingsActivity3, progressDialog, 0));
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    settingsActivity3.runOnUiThread(new RunnableC1894b1(settingsActivity3, progressDialog, i2));
                    return;
                }
        }
    }
}

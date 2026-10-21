package com.google.android.gms.cast.framework.media;

import android.os.Looper;
import android.util.LruCache;
import android.util.SparseIntArray;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzed;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class MediaQueue {

    /* renamed from: b, reason: collision with root package name */
    public long f9961b;

    /* renamed from: c, reason: collision with root package name */
    public final RemoteMediaClient f9962c;

    /* renamed from: d, reason: collision with root package name */
    public List f9963d;

    /* renamed from: e, reason: collision with root package name */
    public final SparseIntArray f9964e;

    /* renamed from: f, reason: collision with root package name */
    public final LruCache f9965f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f9966g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayDeque f9967h;

    /* renamed from: i, reason: collision with root package name */
    public final zzed f9968i;

    /* renamed from: j, reason: collision with root package name */
    public final TimerTask f9969j;

    /* renamed from: k, reason: collision with root package name */
    public PendingResult f9970k;

    /* renamed from: l, reason: collision with root package name */
    public PendingResult f9971l;

    /* renamed from: m, reason: collision with root package name */
    public final Set f9972m = Collections.synchronizedSet(new HashSet());

    /* renamed from: a, reason: collision with root package name */
    public final Logger f9960a = new Logger("MediaQueue");

    public static abstract class Callback {
        public void itemsInsertedInRange(int i2, int i7) {
        }

        public void itemsReloaded() {
        }

        public void itemsRemovedAtIndexes(int[] iArr) {
        }

        public void itemsReorderedAtIndexes(List<Integer> list, int i2) {
        }

        public void itemsUpdatedAtIndexes(int[] iArr) {
        }

        public void mediaQueueChanged() {
        }

        public void mediaQueueWillChange() {
        }
    }

    public MediaQueue(RemoteMediaClient remoteMediaClient) {
        this.f9962c = remoteMediaClient;
        Math.max(20, 1);
        this.f9963d = new ArrayList();
        this.f9964e = new SparseIntArray();
        this.f9966g = new ArrayList();
        this.f9967h = new ArrayDeque(20);
        this.f9968i = new zzed(Looper.getMainLooper());
        this.f9969j = new zzq(this);
        remoteMediaClient.registerCallback(new zzs(this));
        this.f9965f = new zzr(this);
        MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
        this.f9961b = (mediaStatus == null || mediaStatus.zzd()) ? 0L : mediaStatus.zzb();
        zzo();
    }

    public static void a(MediaQueue mediaQueue, int[] iArr) {
        synchronized (mediaQueue.f9972m) {
            try {
                Iterator it = mediaQueue.f9972m.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).itemsUpdatedAtIndexes(iArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ void b(MediaQueue mediaQueue) {
        mediaQueue.f9964e.clear();
        for (int i2 = 0; i2 < mediaQueue.f9963d.size(); i2++) {
            mediaQueue.f9964e.put(((Integer) mediaQueue.f9963d.get(i2)).intValue(), i2);
        }
    }

    public final void c() {
        synchronized (this.f9972m) {
            try {
                Iterator it = this.f9972m.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).mediaQueueChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        synchronized (this.f9972m) {
            try {
                Iterator it = this.f9972m.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).itemsReloaded();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        synchronized (this.f9972m) {
            try {
                Iterator it = this.f9972m.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).mediaQueueWillChange();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzl() {
        e();
        this.f9963d.clear();
        this.f9964e.clear();
        this.f9965f.evictAll();
        this.f9966g.clear();
        this.f9968i.removeCallbacks(this.f9969j);
        this.f9967h.clear();
        PendingResult pendingResult = this.f9971l;
        if (pendingResult != null) {
            pendingResult.cancel();
            this.f9971l = null;
        }
        PendingResult pendingResult2 = this.f9970k;
        if (pendingResult2 != null) {
            pendingResult2.cancel();
            this.f9970k = null;
        }
        d();
        c();
    }

    public final void zzo() {
        PendingResult pendingResult;
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.f9961b != 0 && (pendingResult = this.f9971l) == null) {
            if (pendingResult != null) {
                pendingResult.cancel();
                this.f9971l = null;
            }
            PendingResult pendingResult2 = this.f9970k;
            if (pendingResult2 != null) {
                pendingResult2.cancel();
                this.f9970k = null;
            }
            PendingResult zzi = this.f9962c.zzi();
            this.f9971l = zzi;
            zzi.setResultCallback(new ResultCallback() { // from class: com.google.android.gms.cast.framework.media.zzo
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    MediaQueue mediaQueue = MediaQueue.this;
                    mediaQueue.getClass();
                    Status status = ((RemoteMediaClient.MediaChannelResult) result).getStatus();
                    int statusCode = status.getStatusCode();
                    if (statusCode != 0) {
                        mediaQueue.f9960a.w("Error fetching queue item ids, statusCode=" + statusCode + ", statusMessage=" + status.getStatusMessage(), new Object[0]);
                    }
                    mediaQueue.f9971l = null;
                    if (mediaQueue.f9967h.isEmpty()) {
                        return;
                    }
                    TimerTask timerTask = mediaQueue.f9969j;
                    zzed zzedVar = mediaQueue.f9968i;
                    zzedVar.removeCallbacks(timerTask);
                    zzedVar.postDelayed(timerTask, 500L);
                }
            });
        }
    }
}

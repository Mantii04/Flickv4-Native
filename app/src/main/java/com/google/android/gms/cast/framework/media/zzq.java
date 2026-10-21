package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.zzed;
import java.util.ArrayDeque;
import java.util.TimerTask;

/* loaded from: classes.dex */
final class zzq extends TimerTask {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaQueue f10312b;

    public zzq(MediaQueue mediaQueue) {
        this.f10312b = mediaQueue;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        final MediaQueue mediaQueue = this.f10312b;
        if (mediaQueue.f9967h.isEmpty() || mediaQueue.f9970k != null || mediaQueue.f9961b == 0) {
            return;
        }
        ArrayDeque arrayDeque = mediaQueue.f9967h;
        PendingResult zzj = mediaQueue.f9962c.zzj(CastUtils.zzf(arrayDeque));
        mediaQueue.f9970k = zzj;
        zzj.setResultCallback(new ResultCallback() { // from class: com.google.android.gms.cast.framework.media.zzp
            @Override // com.google.android.gms.common.api.ResultCallback
            public final void onResult(Result result) {
                MediaQueue mediaQueue2 = MediaQueue.this;
                mediaQueue2.getClass();
                Status status = ((RemoteMediaClient.MediaChannelResult) result).getStatus();
                int statusCode = status.getStatusCode();
                if (statusCode != 0) {
                    mediaQueue2.f9960a.w("Error fetching queue items, statusCode=" + statusCode + ", statusMessage=" + status.getStatusMessage(), new Object[0]);
                }
                mediaQueue2.f9970k = null;
                if (mediaQueue2.f9967h.isEmpty()) {
                    return;
                }
                TimerTask timerTask = mediaQueue2.f9969j;
                zzed zzedVar = mediaQueue2.f9968i;
                zzedVar.removeCallbacks(timerTask);
                zzedVar.postDelayed(timerTask, 500L);
            }
        });
        arrayDeque.clear();
    }
}

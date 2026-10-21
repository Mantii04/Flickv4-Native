package com.google.android.gms.cast.framework.media.internal;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
final class zzs extends MediaSessionCompat.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzv f10095a;

    public zzs(zzv zzvVar) {
        this.f10095a = zzvVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onCustomAction(String str, Bundle bundle) {
        char c7;
        zzv.f10097v.d("onCustomAction with action = %s", str);
        switch (str.hashCode()) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        zzv zzvVar = this.f10095a;
        NotificationOptions notificationOptions = zzvVar.f10102e;
        if (c7 == 0) {
            long skipStepMs = notificationOptions.getSkipStepMs();
            RemoteMediaClient remoteMediaClient = zzvVar.f10111n;
            if (remoteMediaClient == null) {
                return;
            }
            long min = Math.min(remoteMediaClient.getStreamDuration(), Math.max(0L, remoteMediaClient.getApproximateStreamPosition() + skipStepMs));
            RemoteMediaClient remoteMediaClient2 = zzvVar.f10111n;
            if (remoteMediaClient2 == null) {
                return;
            }
            MediaSeekOptions.Builder builder = new MediaSeekOptions.Builder();
            builder.setPosition(min);
            remoteMediaClient2.seek(builder.build());
            return;
        }
        if (c7 == 1) {
            long j7 = -notificationOptions.getSkipStepMs();
            RemoteMediaClient remoteMediaClient3 = zzvVar.f10111n;
            if (remoteMediaClient3 == null) {
                return;
            }
            long min2 = Math.min(remoteMediaClient3.getStreamDuration(), Math.max(0L, remoteMediaClient3.getApproximateStreamPosition() + j7));
            RemoteMediaClient remoteMediaClient4 = zzvVar.f10111n;
            if (remoteMediaClient4 == null) {
                return;
            }
            MediaSeekOptions.Builder builder2 = new MediaSeekOptions.Builder();
            builder2.setPosition(min2);
            remoteMediaClient4.seek(builder2.build());
            return;
        }
        SessionManager sessionManager = zzvVar.f10101d;
        if (c7 == 2) {
            if (sessionManager != null) {
                sessionManager.endCurrentSession(true);
            }
        } else if (c7 != 3) {
            Intent intent = new Intent(str);
            intent.setComponent(zzvVar.f10104g);
            zzvVar.f10098a.sendBroadcast(intent);
        } else if (sessionManager != null) {
            sessionManager.endCurrentSession(false);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        RemoteMediaClient remoteMediaClient;
        zzv.f10097v.d("onMediaButtonEvent", new Object[0]);
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent == null) {
            return true;
        }
        if ((keyEvent.getKeyCode() != 127 && keyEvent.getKeyCode() != 126) || (remoteMediaClient = this.f10095a.f10111n) == null) {
            return true;
        }
        remoteMediaClient.togglePlayback();
        return true;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPause() {
        zzv.f10097v.d("onPause", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f10095a.f10111n;
        if (remoteMediaClient != null) {
            remoteMediaClient.togglePlayback();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPlay() {
        zzv.f10097v.d("onPlay", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f10095a.f10111n;
        if (remoteMediaClient != null) {
            remoteMediaClient.togglePlayback();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSeekTo(long j7) {
        zzv.f10097v.d("onSeekTo %d", Long.valueOf(j7));
        RemoteMediaClient remoteMediaClient = this.f10095a.f10111n;
        if (remoteMediaClient == null) {
            return;
        }
        MediaSeekOptions.Builder builder = new MediaSeekOptions.Builder();
        builder.setPosition(j7);
        remoteMediaClient.seek(builder.build());
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToNext() {
        zzv.f10097v.d("onSkipToNext", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f10095a.f10111n;
        if (remoteMediaClient != null) {
            remoteMediaClient.queueNext(null);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToPrevious() {
        zzv.f10097v.d("onSkipToPrevious", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f10095a.f10111n;
        if (remoteMediaClient != null) {
            remoteMediaClient.queuePrev(null);
        }
    }
}

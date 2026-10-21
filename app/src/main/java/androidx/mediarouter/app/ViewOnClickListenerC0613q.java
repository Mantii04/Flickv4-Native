package androidx.mediarouter.app;

import android.app.PendingIntent;
import android.support.v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.View;

/* renamed from: androidx.mediarouter.app.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0613q implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f7887b;

    public ViewOnClickListenerC0613q(D d7) {
        this.f7887b = d7;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PendingIntent sessionActivity;
        D d7 = this.f7887b;
        MediaControllerCompat mediaControllerCompat = d7.f7638d0;
        if (mediaControllerCompat == null || (sessionActivity = mediaControllerCompat.getSessionActivity()) == null) {
            return;
        }
        try {
            sessionActivity.send();
            d7.dismiss();
        } catch (PendingIntent.CanceledException unused) {
            Log.e("MediaRouteCtrlDialog", sessionActivity + " was not sent, it had been canceled.");
        }
    }
}

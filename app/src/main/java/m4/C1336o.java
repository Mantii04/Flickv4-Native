package m4;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* renamed from: m4.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1336o extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final C1337p f18689a;

    public C1336o(C1337p c1337p) {
        this.f18689a = c1337p;
    }

    @Override // android.content.BroadcastReceiver
    @SuppressLint({"MissingPermission"})
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        boolean equals = "android.intent.action.AIRPLANE_MODE".equals(action);
        C1337p c1337p = this.f18689a;
        if (equals) {
            if (intent.hasExtra(RemoteConfigConstants.ResponseFieldKey.STATE)) {
                boolean booleanExtra = intent.getBooleanExtra(RemoteConfigConstants.ResponseFieldKey.STATE, false);
                com.squareup.picasso.b bVar = c1337p.f18697h;
                bVar.sendMessage(bVar.obtainMessage(10, booleanExtra ? 1 : 0, 0));
                return;
            }
            return;
        }
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            StringBuilder sb = W.f18670a;
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            com.squareup.picasso.b bVar2 = c1337p.f18697h;
            bVar2.sendMessage(bVar2.obtainMessage(9, activeNetworkInfo));
        }
    }
}

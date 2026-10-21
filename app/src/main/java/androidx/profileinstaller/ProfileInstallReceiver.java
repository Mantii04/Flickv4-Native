package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import java.io.File;
import l1.AbstractC1211g;
import l1.AbstractC1219o;
import l1.C1207c;

/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        File codeCacheDir;
        Context createDeviceProtectedStorageContext;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            AbstractC1211g.b(context, new androidx.media3.exoplayer.dash.offline.a(0), new C1207c(this), true);
            return;
        }
        if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if (!"WRITE_SKIP_FILE".equals(string)) {
                    if ("DELETE_SKIP_FILE".equals(string)) {
                        C1207c c1207c = new C1207c(this);
                        new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                        c1207c.onResultReceived(11, null);
                        return;
                    }
                    return;
                }
                C1207c c1207c2 = new C1207c(this);
                try {
                    AbstractC1211g.a(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                    c1207c2.onResultReceived(10, null);
                    return;
                } catch (PackageManager.NameNotFoundException e3) {
                    c1207c2.onResultReceived(7, e3);
                    return;
                }
            }
            return;
        }
        if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            C1207c c1207c3 = new C1207c(this);
            if (Build.VERSION.SDK_INT < 24) {
                c1207c3.onResultReceived(13, null);
                return;
            } else {
                Process.sendSignal(Process.myPid(), 10);
                c1207c3.onResultReceived(12, null);
                return;
            }
        }
        if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
            return;
        }
        String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
        C1207c c1207c4 = new C1207c(this);
        if (!"DROP_SHADER_CACHE".equals(string2)) {
            c1207c4.onResultReceived(16, null);
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            createDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            codeCacheDir = createDeviceProtectedStorageContext.getCodeCacheDir();
        } else {
            codeCacheDir = context.getCodeCacheDir();
        }
        if (AbstractC1219o.b(codeCacheDir)) {
            c1207c4.onResultReceived(14, null);
        } else {
            c1207c4.onResultReceived(15, null);
        }
    }
}

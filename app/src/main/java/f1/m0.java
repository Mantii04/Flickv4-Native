package f1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public abstract class m0 extends BroadcastReceiver {
    public static boolean isDeclared(Context context) {
        Intent intent = new Intent(context, (Class<?>) m0.class);
        intent.setPackage(context.getPackageName());
        return context.getPackageManager().queryBroadcastReceivers(intent, 0).size() > 0;
    }
}

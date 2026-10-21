package z;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class X implements Iterable {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f21354b = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final Context f21355e;

    public X(Context context) {
        this.f21355e = context;
    }

    public static X create(Context context) {
        return new X(context);
    }

    public X addNextIntent(Intent intent) {
        this.f21354b.add(intent);
        return this;
    }

    public X addNextIntentWithParentStack(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.f21355e.getPackageManager());
        }
        if (component != null) {
            addParentStack(component);
        }
        addNextIntent(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X addParentStack(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof W ? ((W) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = AbstractC1975v.getParentActivityIntent(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f21355e.getPackageManager());
            }
            addParentStack(component);
            addNextIntent(supportParentActivityIntent);
        }
        return this;
    }

    public PendingIntent getPendingIntent(int i2, int i7) {
        return getPendingIntent(i2, i7, null);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f21354b.iterator();
    }

    public void startActivities() {
        startActivities(null);
    }

    public PendingIntent getPendingIntent(int i2, int i7, Bundle bundle) {
        ArrayList arrayList = this.f21354b;
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        return PendingIntent.getActivities(this.f21355e, i2, intentArr, i7, bundle);
    }

    public void startActivities(Bundle bundle) {
        ArrayList arrayList = this.f21354b;
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        Context context = this.f21355e;
        if (A.h.startActivities(context, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public X addParentStack(ComponentName componentName) {
        Context context = this.f21355e;
        ArrayList arrayList = this.f21354b;
        int size = arrayList.size();
        try {
            for (Intent parentActivityIntent = AbstractC1975v.getParentActivityIntent(context, componentName); parentActivityIntent != null; parentActivityIntent = AbstractC1975v.getParentActivityIntent(context, parentActivityIntent.getComponent())) {
                arrayList.add(size, parentActivityIntent);
            }
            return this;
        } catch (PackageManager.NameNotFoundException e3) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e3);
        }
    }
}

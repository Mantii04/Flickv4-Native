package z;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import f1.RunnableC0883a;
import java.util.Arrays;
import java.util.HashSet;

/* renamed from: z.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1958d extends A.h {
    public static void finishAffinity(Activity activity) {
        activity.finishAffinity();
    }

    public static void finishAfterTransition(Activity activity) {
        AbstractC1955a.a(activity);
    }

    public static void postponeEnterTransition(Activity activity) {
        AbstractC1955a.b(activity);
    }

    public static void recreate(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new RunnableC0883a(activity, 14));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void requestPermissions(Activity activity, String[] strArr, int i2) {
        HashSet hashSet = new HashSet();
        for (int i7 = 0; i7 < strArr.length; i7++) {
            if (TextUtils.isEmpty(strArr[i7])) {
                throw new IllegalArgumentException(A.i.o(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i7], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i7));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i8 = 0;
            for (int i9 = 0; i9 < strArr.length; i9++) {
                if (!hashSet.contains(Integer.valueOf(i9))) {
                    strArr2[i8] = strArr[i9];
                    i8++;
                }
            }
        }
        if (activity instanceof InterfaceC1957c) {
            ((InterfaceC1957c) activity).validateRequestPermissionsRequestCode(i2);
        }
        AbstractC1956b.b(activity, strArr, i2);
    }

    public static void setEnterSharedElementCallback(Activity activity, V v6) {
        AbstractC1955a.c(activity, null);
    }

    public static void setExitSharedElementCallback(Activity activity, V v6) {
        AbstractC1955a.d(activity, null);
    }

    public static void startActivityForResult(Activity activity, Intent intent, int i2, Bundle bundle) {
        activity.startActivityForResult(intent, i2, bundle);
    }

    public static void startIntentSenderForResult(Activity activity, IntentSender intentSender, int i2, Intent intent, int i7, int i8, int i9, Bundle bundle) throws IntentSender.SendIntentException {
        activity.startIntentSenderForResult(intentSender, i2, intent, i7, i8, i9, bundle);
    }

    public static void startPostponedEnterTransition(Activity activity) {
        AbstractC1955a.e(activity);
    }
}
